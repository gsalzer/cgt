Processing contract: /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol:GDC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GDC':
    |}
    |
  > |contract GDC is Token{
    |    
    |    constructor() public{
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'GDC':
    |        supply = totalSupply;
    |    }
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {return balances[_owner];}
    |    
    |    function transfer(address _to, uint256 _amount) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'GDC':
    |    }
    |  
  > |    function transferFrom(address _from,address _to,uint256 _amount) public returns (bool success) {
    |        require (balances[_from]>=_amount&&allowed[_from][msg.sender]>=_amount&&_amount>0&&balances[_to]+_amount>balances[_to]);
    |        balances[_from]-=_amount;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'GDC':
    |    }
    |  
  > |    function approve(address _spender, uint256 _amount) public returns (bool success) {
    |        allowed[msg.sender][_spender]=_amount;
    |        emit Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'GDC':
    |    }
    |    
  > |    function allowance(address _owner, address _spender) public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'GDC':
    |
    |contract Token is ERC20 {
  > |    string public symbol;
    |    string public name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'GDC':
    |contract Token is ERC20 {
    |    string public symbol;
  > |    string public name;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'GDC':
    |    string public symbol;
    |    string public name;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'GDC':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |	address public owner;
    |    mapping (address=>uint256) balances;
    |    mapping (address=>mapping (address=>uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'GDC':
    |    mapping (address=>mapping (address=>uint256)) allowed;
    |    
  > |    function totalSupply() constant public returns (uint256 supply) {
    |        supply = totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'GDC':
    |        require (balances[msg.sender]>=_amount&&_amount>0&&balances[_to]+_amount>balances[_to]);
    |        balances[msg.sender]-=_amount;
  > |        balances[_to]+=_amount;
    |        emit Transfer(msg.sender,_to,_amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'GDC':
    |    function transferFrom(address _from,address _to,uint256 _amount) public returns (bool success) {
    |        require (balances[_from]>=_amount&&allowed[_from][msg.sender]>=_amount&&_amount>0&&balances[_to]+_amount>balances[_to]);
  > |        balances[_from]-=_amount;
    |        allowed[_from][msg.sender]-=_amount;
    |        balances[_to]+=_amount;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'GDC':
    |        balances[_from]-=_amount;
    |        allowed[_from][msg.sender]-=_amount;
  > |        balances[_to]+=_amount;
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'GDC':
    |    function transfer(address _to, uint256 _amount) public returns (bool success) {
    |        require (balances[msg.sender]>=_amount&&_amount>0&&balances[_to]+_amount>balances[_to]);
  > |        balances[msg.sender]-=_amount;
    |        balances[_to]+=_amount;
    |        emit Transfer(msg.sender,_to,_amount);
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'GDC':
    |        require (balances[_from]>=_amount&&allowed[_from][msg.sender]>=_amount&&_amount>0&&balances[_to]+_amount>balances[_to]);
    |        balances[_from]-=_amount;
  > |        allowed[_from][msg.sender]-=_amount;
    |        balances[_to]+=_amount;
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'GDC':
    |  
    |    function approve(address _spender, uint256 _amount) public returns (bool success) {
  > |        allowed[msg.sender][_spender]=_amount;
    |        emit Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(46)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is ERC20 {
    |    string public symbol;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |        supply = totalSupply;
    |    }
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {return balances[_owner];}
    |    
    |    function transfer(address _to, uint256 _amount) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |  
  > |    function transferFrom(address _from,address _to,uint256 _amount) public returns (bool success) {
    |        require (balances[_from]>=_amount&&allowed[_from][msg.sender]>=_amount&&_amount>0&&balances[_to]+_amount>balances[_to]);
    |        balances[_from]-=_amount;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |  
  > |    function approve(address _spender, uint256 _amount) public returns (bool success) {
    |        allowed[msg.sender][_spender]=_amount;
    |        emit Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |    
  > |    function allowance(address _owner, address _spender) public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |contract Token is ERC20 {
  > |    string public symbol;
    |    string public name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract Token is ERC20 {
    |    string public symbol;
  > |    string public name;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public symbol;
    |    string public name;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |	address public owner;
    |    mapping (address=>uint256) balances;
    |    mapping (address=>mapping (address=>uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    mapping (address=>mapping (address=>uint256)) allowed;
    |    
  > |    function totalSupply() constant public returns (uint256 supply) {
    |        supply = totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require (balances[msg.sender]>=_amount&&_amount>0&&balances[_to]+_amount>balances[_to]);
    |        balances[msg.sender]-=_amount;
  > |        balances[_to]+=_amount;
    |        emit Transfer(msg.sender,_to,_amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |    function transferFrom(address _from,address _to,uint256 _amount) public returns (bool success) {
    |        require (balances[_from]>=_amount&&allowed[_from][msg.sender]>=_amount&&_amount>0&&balances[_to]+_amount>balances[_to]);
  > |        balances[_from]-=_amount;
    |        allowed[_from][msg.sender]-=_amount;
    |        balances[_to]+=_amount;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        balances[_from]-=_amount;
    |        allowed[_from][msg.sender]-=_amount;
  > |        balances[_to]+=_amount;
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transfer(address _to, uint256 _amount) public returns (bool success) {
    |        require (balances[msg.sender]>=_amount&&_amount>0&&balances[_to]+_amount>balances[_to]);
  > |        balances[msg.sender]-=_amount;
    |        balances[_to]+=_amount;
    |        emit Transfer(msg.sender,_to,_amount);
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require (balances[_from]>=_amount&&allowed[_from][msg.sender]>=_amount&&_amount>0&&balances[_to]+_amount>balances[_to]);
    |        balances[_from]-=_amount;
  > |        allowed[_from][msg.sender]-=_amount;
    |        balances[_to]+=_amount;
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |  
    |    function approve(address _spender, uint256 _amount) public returns (bool success) {
  > |        allowed[msg.sender][_spender]=_amount;
    |        emit Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xdae5447cec97be20a187244d4a8b4338367680de.sol(46)


