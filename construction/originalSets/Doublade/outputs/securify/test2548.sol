Processing contract: /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol:ValeaCdsTok20220305I
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.18;
    |
  > |contract Ownable {
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |    address public owner;
    |    
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(17)

[33mWarning[0m for LockedEther in contract 'ValeaCdsTok20220305I':
    |}
    |
  > |contract ValeaCdsTok20220305I is Ownable {
    |    
    |    string public constant name = "ValeaCdsTok20220305I";
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'ValeaCdsTok20220305I':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'ValeaCdsTok20220305I':
    |    }
    |    
  > |    function balanceOf(address _owner) public constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'ValeaCdsTok20220305I':
    |    }
    |    
  > |    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |        if( allowed[_from][msg.sender] >= _value &&
    |            balances[_from] >= _value 
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'ValeaCdsTok20220305I':
    |    }
    |    
  > |    function approve(address _spender, uint _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'ValeaCdsTok20220305I':
    |    }
    |    
  > |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'ValeaCdsTok20220305I':
    |contract Ownable {
    |    
  > |    address public owner;
    |    
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'ValeaCdsTok20220305I':
    |contract ValeaCdsTok20220305I is Ownable {
    |    
  > |    string public constant name = "ValeaCdsTok20220305I";
    |    
    |    string public constant symbol = "VALEAI";
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'ValeaCdsTok20220305I':
    |    string public constant name = "ValeaCdsTok20220305I";
    |    
  > |    string public constant symbol = "VALEAI";
    |    
    |    uint32 public constant decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'ValeaCdsTok20220305I':
    |    string public constant symbol = "VALEAI";
    |    
  > |    uint32 public constant decimals = 8;
    |    
    |    uint public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'ValeaCdsTok20220305I':
    |    uint32 public constant decimals = 8;
    |    
  > |    uint public totalSupply = 0;
    |    
    |    mapping (address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'ValeaCdsTok20220305I':
    |    function transfer(address _to, uint _value) public returns (bool success) {
    |        if(balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {
  > |            balances[msg.sender] -= _value; 
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'ValeaCdsTok20220305I':
    |            balances[_from] >= _value 
    |            && balances[_to] + _value >= balances[_to]) {
  > |            allowed[_from][msg.sender] -= _value;
    |            balances[_from] -= _value; 
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'ValeaCdsTok20220305I':
    |    
    |    function approve(address _spender, uint _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'ValeaCdsTok20220305I':
    |
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'ValeaCdsTok20220305I':
    |    function mint(address _to, uint _value) public onlyOwner {
    |        assert(totalSupply + _value >= totalSupply && balances[_to] + _value >= balances[_to]);
  > |        balances[_to] += _value;
    |        totalSupply += _value;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'ValeaCdsTok20220305I':
    |        assert(totalSupply + _value >= totalSupply && balances[_to] + _value >= balances[_to]);
    |        balances[_to] += _value;
  > |        totalSupply += _value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa6e6e8e626cd49ca9e24f52efd132d595b03347e.sol(39)


