Processing contract: /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |pragma solidity ^0.4.19;
    |
  > |contract TokenERC20 {
    |    string public name = "United Vepomzer";
    |    string public symbol = "Vepomzer";
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint256 public totalSupply = 999999999 * 10 ** decimals;
    |
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowed[_from][msg.sender]);
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |contract TokenERC20 {
  > |    string public name = "United Vepomzer";
    |    string public symbol = "Vepomzer";
    |    uint256 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    string public name = "United Vepomzer";
  > |    string public symbol = "Vepomzer";
    |    uint256 public decimals = 18;
    |    uint256 public totalSupply = 999999999 * 10 ** decimals;
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name = "United Vepomzer";
    |    string public symbol = "Vepomzer";
  > |    uint256 public decimals = 18;
    |    uint256 public totalSupply = 999999999 * 10 ** decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol = "Vepomzer";
    |    uint256 public decimals = 18;
  > |    uint256 public totalSupply = 999999999 * 10 ** decimals;
    |
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != address(0));
    |        require(balances[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balances[_to] + _value >= balances[_to]);
    |        uint previousBalances = balances[_from] + balances[_to];
  > |        balances[_from] -= _value;
    |        balances[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        balances[_from] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balances[_from] + balances[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balances[_to] + _value >= balances[_to]);
    |        uint previousBalances = balances[_from] + balances[_to];
  > |        balances[_from] -= _value;
    |        balances[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowed[_from][msg.sender]);
  > |        allowed[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8d80159a72f7d80cc2a0fe2e366770f514f827fa.sol(43)


