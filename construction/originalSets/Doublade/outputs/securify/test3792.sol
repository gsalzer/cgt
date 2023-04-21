Processing contract: /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol:simpleToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'simpleToken':
    |pragma solidity ^0.4.21;
    |
  > |contract simpleToken {
    |
    |    uint256 totalSupply_; 
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'simpleToken':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256){
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'simpleToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256) {
    |        return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'simpleToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'simpleToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        require(_to != address(0));
    |        require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'simpleToken':
    |        } 
    |
  > |     function increaseApproval(address _spender, uint _addedValue) public returns (bool) { 
    |     allowed[msg.sender][_spender] = allowed[msg.sender][_spender] + _addedValue; 
    |     emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]); 
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'simpleToken':
    |     } 
    | 
  > |    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) { 
    |    uint oldValue = allowed[msg.sender][_spender]; 
    |    if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'simpleToken':
    |
    |    uint256 totalSupply_; 
  > |    string public constant name = "Vapecoin";
    |    string public constant symbol = "VPC";
    |    uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'simpleToken':
    |    uint256 totalSupply_; 
    |    string public constant name = "Vapecoin";
  > |    string public constant symbol = "VPC";
    |    uint8 public constant decimals = 18;
    |    uint256 public constant initialSupply = 5000000000*(10**uint256(decimals));
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'simpleToken':
    |    string public constant name = "Vapecoin";
    |    string public constant symbol = "VPC";
  > |    uint8 public constant decimals = 18;
    |    uint256 public constant initialSupply = 5000000000*(10**uint256(decimals));
    |
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'simpleToken':
    |    string public constant symbol = "VPC";
    |    uint8 public constant decimals = 18;
  > |    uint256 public constant initialSupply = 5000000000*(10**uint256(decimals));
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'simpleToken':
    |    mapping (address => mapping (address => uint256)) allowed;
    |    
  > |    function totalSupply() public view returns (uint256){
    |        return totalSupply_;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'simpleToken':
    |  }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool ) {
    |        require(_to != address(0));
    |        require(balances[msg.sender] >= _value); 
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(29)

[31mViolation[0m for UnrestrictedWrite in contract 'simpleToken':
    |        require(balances[msg.sender] >= _value); 
    |        balances[msg.sender] = balances[msg.sender] - _value; 
  > |        balances[_to] = balances[_to] + _value; 
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'simpleToken':
    |        require(_value <= balances[_from]);
    |        require(_value <= allowed[_from][msg.sender]); 
  > |        balances[_from] = balances[_from] - _value; 
    |        balances[_to] = balances[_to] + _value; 
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender] - _value; 
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'simpleToken':
    |        require(_value <= allowed[_from][msg.sender]); 
    |        balances[_from] = balances[_from] - _value; 
  > |        balances[_to] = balances[_to] + _value; 
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender] - _value; 
    |        emit Transfer(_from, _to, _value); 
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'simpleToken':
    |        require(_to != address(0));
    |        require(balances[msg.sender] >= _value); 
  > |        balances[msg.sender] = balances[msg.sender] - _value; 
    |        balances[_to] = balances[_to] + _value; 
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'simpleToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'simpleToken':
    |        balances[_from] = balances[_from] - _value; 
    |        balances[_to] = balances[_to] + _value; 
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender] - _value; 
    |        emit Transfer(_from, _to, _value); 
    |        return true; 
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'simpleToken':
    |
    |     function increaseApproval(address _spender, uint _addedValue) public returns (bool) { 
  > |     allowed[msg.sender][_spender] = allowed[msg.sender][_spender] + _addedValue; 
    |     emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]); 
    |     return true; 
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'simpleToken':
    |    if (_subtractedValue > oldValue) {
    |
  > |        allowed[msg.sender][_spender] = 0;
    |    } 
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'simpleToken':
    |    } 
    |        else {
  > |        allowed[msg.sender][_spender] = oldValue - _subtractedValue;
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf96ac067fdd6b9981bfc3bde0599f2942f857f63.sol(68)


