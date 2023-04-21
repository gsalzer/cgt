Processing contract: /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol:eBookCoinToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'eBookCoinToken':
    |pragma solidity ^0.4.16;
    |
  > |contract eBookCoinToken {
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'eBookCoinToken':
    |
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'eBookCoinToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'eBookCoinToken':
    |    }
    |     
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'eBookCoinToken':
    |    }
    |     
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'eBookCoinToken':
    |    }
    |     
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'eBookCoinToken':
    |contract eBookCoinToken {
    |
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'eBookCoinToken':
    |
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 8;
    |
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'eBookCoinToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 8;
    |
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'eBookCoinToken':
    |    uint8 public decimals = 8;
    |
  > |    uint256 public totalSupply;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'eBookCoinToken':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'eBookCoinToken':
    |    }
    |     
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'eBookCoinToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'eBookCoinToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'eBookCoinToken':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'eBookCoinToken':
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  > |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'eBookCoinToken':
    |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;                              
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'eBookCoinToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'eBookCoinToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'eBookCoinToken':
    |     
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'eBookCoinToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'eBookCoinToken':
    |        require(_value <= allowance[_from][msg.sender]);    
    |        balanceOf[_from] -= _value;                         
  > |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x974bc71358d5d342229bf12d13d8cd14d4f8b85c.sol(66)


