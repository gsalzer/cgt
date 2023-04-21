Processing contract: /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol:MeerkatToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MeerkatToken':
    |}
    |
  > |contract MeerkatToken is ERC20Interface {
    |    address public owner;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'MeerkatToken':
    |    }
    |
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'MeerkatToken':
    |    }
    |
  > |    function transfer(address _to, uint _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        require(balances[_to] + _value >= balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'MeerkatToken':
    |
    |contract MeerkatToken is ERC20Interface {
  > |    address public owner;
    |    string public symbol;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'MeerkatToken':
    |contract MeerkatToken is ERC20Interface {
    |    address public owner;
  > |    string public symbol;
    |    string public name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'MeerkatToken':
    |    address public owner;
    |    string public symbol;
  > |    string public name;
    |    uint8 public decimals;
    |    uint public initSupply;
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'MeerkatToken':
    |    string public symbol;
    |    string public name;
  > |    uint8 public decimals;
    |    uint public initSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'MeerkatToken':
    |    string public name;
    |    uint8 public decimals;
  > |    uint public initSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'MeerkatToken':
    |    }
    |
  > |    function totalSupply() public constant returns (uint) {
    |        return initSupply - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'MeerkatToken':
    |
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'MeerkatToken':
    |        uint previousBalances = balances[msg.sender] + balances[_to];
    |
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x4590877022b2ff1f19953710d8a1e387e5da6315.sol(46)


