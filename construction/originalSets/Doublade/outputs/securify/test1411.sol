Processing contract: /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol:VagCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'VagCoin':
    |
    |
  > |contract VagCoin  {
    |    
    |    uint public constant _totalSupply = 50000000;
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'VagCoin':
    |    }
    |    
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |        
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'VagCoin':
    |    }
    |    
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        require(
    |            balances[msg.sender] >= _value
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'VagCoin':
    |        }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require (
    |             allowed[_from][msg.sender] >= _value
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'VagCoin':
    |             
    |    }
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'VagCoin':
    |        return true;
    |    }
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining)
    |{
    |    return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'VagCoin':
    |contract VagCoin  {
    |    
  > |    uint public constant _totalSupply = 50000000;
    |    
    |    string public constant symbol ="VAG";
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'VagCoin':
    |    uint public constant _totalSupply = 50000000;
    |    
  > |    string public constant symbol ="VAG";
    |    string public constant name ="VagCoin";
    |    uint8 public constant decimals =0;
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'VagCoin':
    |    
    |    string public constant symbol ="VAG";
  > |    string public constant name ="VagCoin";
    |    uint8 public constant decimals =0;
    |    
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'VagCoin':
    |    string public constant symbol ="VAG";
    |    string public constant name ="VagCoin";
  > |    uint8 public constant decimals =0;
    |    
    |        
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'VagCoin':
    |        
    |        
  > |    function Vag() {
    |        balances[msg.sender] = _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'VagCoin':
    |        balances[msg.sender] = _totalSupply;
    |    }
  > |    function totalSupply() constant returns (uint256 totalSupply) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'VagCoin':
    |            && _value > 0);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to,  _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'VagCoin':
    |             && _value >0
    |             );
  > |             balances[_from] -= _value;
    |             balances[_to] += _value;
    |             allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'VagCoin':
    |             );
    |             balances[_from] -= _value;
  > |             balances[_to] += _value;
    |             allowed[_from][msg.sender] -= _value;
    |             Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'VagCoin':
    |        
    |    function Vag() {
  > |        balances[msg.sender] = _totalSupply;
    |    }
    |    function totalSupply() constant returns (uint256 totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'VagCoin':
    |            balances[msg.sender] >= _value
    |            && _value > 0);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to,  _value);
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'VagCoin':
    |             balances[_from] -= _value;
    |             balances[_to] += _value;
  > |             allowed[_from][msg.sender] -= _value;
    |             Transfer(_from, _to, _value);
    |             return true;
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'VagCoin':
    |    }
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x59a3b625ee9f31dbc9a5f45b63047237d4c87d46.sol(59)


