Processing contract: /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol:FAUT
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FAUT':
    |pragma solidity ^0.4.16;
    |
  > |contract FAUT {
    |    string public name = 'FAUT';
    |    string public symbol = 'FAUT';
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'FAUT':
    |    uint256 public totalSupply = 1000000000000000000000000;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'FAUT':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'FAUT':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'FAUT':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'FAUT':
    |
    |contract FAUT {
  > |    string public name = 'FAUT';
    |    string public symbol = 'FAUT';
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'FAUT':
    |contract FAUT {
    |    string public name = 'FAUT';
  > |    string public symbol = 'FAUT';
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 1000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'FAUT':
    |    string public name = 'FAUT';
    |    string public symbol = 'FAUT';
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 1000000000000000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'FAUT':
    |    string public symbol = 'FAUT';
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply = 1000000000000000000000000;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'FAUT':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'FAUT':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'FAUT':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'FAUT':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'FAUT':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'FAUT':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1271bbe2add504ad3d9b21b1242b80df54b8e7a5.sol(41)


