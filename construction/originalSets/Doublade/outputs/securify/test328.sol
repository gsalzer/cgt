Processing contract: /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol:C5PMToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'C5PMToken':
    |pragma solidity ^0.4.16;
    |
  > |contract C5PMToken {
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'C5PMToken':
    |
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'C5PMToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'C5PMToken':
    |    }
    |     
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'C5PMToken':
    |    }
    |     
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'C5PMToken':
    |    }
    |     
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'C5PMToken':
    |contract C5PMToken {
    |
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'C5PMToken':
    |
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 8;
    |
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'C5PMToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 8;
    |
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'C5PMToken':
    |    uint8 public decimals = 8;
    |
  > |    uint256 public totalSupply;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'C5PMToken':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'C5PMToken':
    |    }
    |     
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'C5PMToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'C5PMToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'C5PMToken':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'C5PMToken':
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  > |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'C5PMToken':
    |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;                              
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'C5PMToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'C5PMToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'C5PMToken':
    |     
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'C5PMToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'C5PMToken':
    |        require(_value <= allowance[_from][msg.sender]);    
    |        balanceOf[_from] -= _value;                         
  > |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x15a5c9c6d9c3a4c0b533d66f9358329c1e984ed7.sol(66)


