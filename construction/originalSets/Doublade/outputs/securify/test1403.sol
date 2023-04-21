Processing contract: /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol:MITtoken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MITtoken':
    |}
    |
  > |contract MITtoken is Ownable {
    |    
    |    string public constant name = "MIT Token";
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'MITtoken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'MITtoken':
    |    }
    |    
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'MITtoken':
    |    }
    |    
  > |    function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |        if( allowed[_from][msg.sender] >= _value &&
    |            balances[_from] >= _value 
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'MITtoken':
    |    }
    |    
  > |    function approve(address _spender, uint _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'MITtoken':
    |    }
    |    
  > |    function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'MITtoken':
    |contract MITtoken is Ownable {
    |    
  > |    string public constant name = "MIT Token";
    |    
    |    string public constant symbol = "MIT";
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'MITtoken':
    |    string public constant name = "MIT Token";
    |    
  > |    string public constant symbol = "MIT";
    |    
    |    uint32 public constant decimals = 1;
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'MITtoken':
    |    string public constant symbol = "MIT";
    |    
  > |    uint32 public constant decimals = 1;
    |    
    |    uint public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'MITtoken':
    |    uint32 public constant decimals = 1;
    |    
  > |    uint public totalSupply = 0;
    |    
    |    mapping (address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'MITtoken':
    |    function transfer(address _to, uint _value) returns (bool success) {
    |        if(balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
  > |            balances[msg.sender] -= _value; 
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'MITtoken':
    |            balances[_from] >= _value 
    |            && balances[_to] + _value >= balances[_to]) {
  > |            allowed[_from][msg.sender] -= _value;
    |            balances[_from] -= _value; 
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'MITtoken':
    |    
    |    function approve(address _spender, uint _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'MITtoken':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'MITtoken':
    |    function mint(address _to, uint _value) onlyOwner {
    |        assert(totalSupply + _value >= totalSupply && balances[_to] + _value >= balances[_to]);
  > |        balances[_to] += _value;
    |        totalSupply += _value;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'MITtoken':
    |        assert(totalSupply + _value >= totalSupply && balances[_to] + _value >= balances[_to]);
    |        balances[_to] += _value;
  > |        totalSupply += _value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(39)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.13;
    |
  > |contract Ownable {
    |    
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x593e2cd90b0d5acce70962d32259258c6566fc18.sol(17)


