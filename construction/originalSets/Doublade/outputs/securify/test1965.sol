Processing contract: /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol:CENTIPEDEToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CENTIPEDEToken':
    |pragma solidity ^0.4.16;
    |
  > |contract CENTIPEDEToken {
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |    }
    |     
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |    }
    |     
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |    }
    |     
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |contract CENTIPEDEToken {
    |
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 8;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 8;
    |
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |    uint8 public decimals = 8;
    |
  > |    uint256 public totalSupply;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'CENTIPEDEToken':
    |    }
    |     
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'CENTIPEDEToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'CENTIPEDEToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'CENTIPEDEToken':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'CENTIPEDEToken':
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  > |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'CENTIPEDEToken':
    |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;                              
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'CENTIPEDEToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'CENTIPEDEToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'CENTIPEDEToken':
    |     
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'CENTIPEDEToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'CENTIPEDEToken':
    |        require(_value <= allowance[_from][msg.sender]);    
    |        balanceOf[_from] -= _value;                         
  > |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x7f0f564854edd2606d8625023d4641f2dd8dc317.sol(66)


