Processing contract: /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol:VERIME
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'VERIME':
    |pragma solidity ^0.4.11;
    |
  > |contract VERIME  {
    |    uint public _totalSupply = 1000000000000000000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'VERIME':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'VERIME':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) ownerOrEnabledTransfer public returns (bool) {
    |        require(
    |        balances[msg.sender]>= _value
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'VERIME':
    |        return true;
    |    }
  > |    function transferFrom(address _from, address _to, uint256 _value) ownerOrEnabledTransfer public returns (bool success) {
    |        require(
    |        allowed[_from][msg.sender]  >= _value
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'VERIME':
    |        return true;
    |    }
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'VERIME':
    |
    |contract VERIME  {
  > |    uint public _totalSupply = 1000000000000000000000000000;
    |
    |    string public constant symbol = "VME";
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'VERIME':
    |    uint public _totalSupply = 1000000000000000000000000000;
    |
  > |    string public constant symbol = "VME";
    |    string public constant name = "Verime Mobile";
    |    uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'VERIME':
    |
    |    string public constant symbol = "VME";
  > |    string public constant name = "Verime Mobile";
    |    uint8 public constant decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'VERIME':
    |    string public constant symbol = "VME";
    |    string public constant name = "Verime Mobile";
  > |    uint8 public constant decimals = 18;
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'VERIME':
    |    uint8 public constant decimals = 18;
    |
  > |    address public owner;
    |    address public whitelistedContract;
    |    bool freeTransfer = false;
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'VERIME':
    |
    |    address public owner;
  > |    address public whitelistedContract;
    |    bool freeTransfer = false;
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'VERIME':
    |    }
    |
  > |    function enableTransfer() ownerOrEnabledTransfer() {
    |        freeTransfer = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'VERIME':
    |    }
    |
  > |    function totalSupply() constant returns (uint256 totalSupply){
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'VERIME':
    |        return allowed[_owner][_spender];
    |    }
  > |    function changeWhitelistedContract(address newAddress) public onlyOwner returns (bool) {
    |        require(newAddress != address(0));
    |        whitelistedContract = newAddress;
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'VERIME':
    |        whitelistedContract = newAddress;
    |    }
  > |    function transferOwnership(address newOwner) public onlyOwner returns (bool) {
    |      require(newOwner != address(0));
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'VERIME':
    |
    |    function enableTransfer() ownerOrEnabledTransfer() {
  > |        freeTransfer = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'VERIME':
    |        );
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'VERIME':
    |        && _value > 0
    |        );
  > |        balances[_from] -= _value;
    |        balances[_to] += _value;
    |        allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'VERIME':
    |        );
    |        balances[_from] -= _value;
  > |        balances[_to] += _value;
    |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'VERIME':
    |        && _value > 0
    |        );
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'VERIME':
    |        balances[_from] -= _value;
    |        balances[_to] += _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'VERIME':
    |        //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |        require(_value == 0 || allowed[msg.sender][_spender] == 0);
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'VERIME':
    |    function changeWhitelistedContract(address newAddress) public onlyOwner returns (bool) {
    |        require(newAddress != address(0));
  > |        whitelistedContract = newAddress;
    |    }
    |    function transferOwnership(address newOwner) public onlyOwner returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'VERIME':
    |    function transferOwnership(address newOwner) public onlyOwner returns (bool) {
    |      require(newOwner != address(0));
  > |      owner = newOwner;
    |    }
    |    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x563582243c6bf9454caf7dc568f98e9ba5d20c22.sol(89)


