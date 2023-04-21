Processing contract: /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) 
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function kill() public {
    |        if (msg.sender == owner) 
    |            selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) 
  > |            owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^ 0.4.17;
    |
  > |contract SafeMath {
    |    function safeMul(uint a, uint b) pure internal returns(uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(3)

[33mWarning[0m for LockedEther in contract 'Token':
    |
    |// The PPP token
  > |contract Token is ERC20, SafeMath, Ownable {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function burn( address _member, uint256 _value) public onlyAuthorized returns(bool) {
    |        balances[_member] = safeSub(balances[_member], _value);
    |        totalSupply = safeSub(totalSupply, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |
    |    
  > |    function transferFrom(address _from, address _to, uint256 _value) public onlyUnlocked returns(bool success) {
    |        require(_to != address(0));
    |        require (balances[_from] >= _value); // Check if the sender has enough                            
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(134)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns(uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |   * @param _value The amount of tokens to be spent.
    |   */
  > |    function approve(address _spender, uint _value) public returns(bool) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(160)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |
    |
  > |    function allowance(address _owner, address _spender) public view returns(uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(167)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |   * From MonolithDAO Token.sol
    |   */
  > |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
    |    allowed[msg.sender][_spender] = safeAdd(allowed[msg.sender][_spender], _addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |  }
    |
  > |  function decreaseApproval (address _spender, uint _subtractedValue) public returns (bool success) {
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function safeSub(uint a, uint b) pure internal returns(uint) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function safeAdd(uint a, uint b) pure internal returns(uint) {
    |        uint c = a + b;
    |        assert(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) 
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function kill() public {
    |        if (msg.sender == owner) 
    |            selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract Token is ERC20, SafeMath, Ownable {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals; // How many decimals to show.
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals; // How many decimals to show.
    |    string public version = "v0.1";
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals; // How many decimals to show.
    |    string public version = "v0.1";
    |    uint public initialSupply;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public symbol;
    |    uint8 public decimals; // How many decimals to show.
  > |    string public version = "v0.1";
    |    uint public initialSupply;
    |    uint public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint8 public decimals; // How many decimals to show.
    |    string public version = "v0.1";
  > |    uint public initialSupply;
    |    uint public totalSupply;
    |    bool public locked;   
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public version = "v0.1";
    |    uint public initialSupply;
  > |    uint public totalSupply;
    |    bool public locked;   
    |    address public preSaleAddress;       
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint public initialSupply;
    |    uint public totalSupply;
  > |    bool public locked;   
    |    address public preSaleAddress;       
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint public totalSupply;
    |    bool public locked;   
  > |    address public preSaleAddress;       
    |    mapping(address => uint) balances;
    |    mapping(address => mapping(address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function unlock() public onlyAuthorized {
    |        locked = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function lock() public onlyAuthorized {
    |        locked = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function burn( address _member, uint256 _value) public onlyAuthorized returns(bool) {
  > |        balances[_member] = safeSub(balances[_member], _value);
    |        totalSupply = safeSub(totalSupply, _value);
    |        Transfer(_member, 0x0, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |    function burn( address _member, uint256 _value) public onlyAuthorized returns(bool) {
    |        balances[_member] = safeSub(balances[_member], _value);
  > |        totalSupply = safeSub(totalSupply, _value);
    |        Transfer(_member, 0x0, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function transfer(address _to, uint _value) public onlyUnlocked returns(bool) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |    function transfer(address _to, uint _value) public onlyUnlocked returns(bool) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require (balances[_from] >= _value); // Check if the sender has enough                            
    |        require (_value <= allowed[_from][msg.sender]); // Check if allowed is greater or equal        
  > |        balances[_from] = safeSub(balances[_from], _value); // Subtract from the sender
    |        balances[_to] = safeAdd(balances[_to],_value); // Add the same to the recipient
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_value);  // decrease allowed amount
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require (_value <= allowed[_from][msg.sender]); // Check if allowed is greater or equal        
    |        balances[_from] = safeSub(balances[_from], _value); // Subtract from the sender
  > |        balances[_to] = safeAdd(balances[_to],_value); // Add the same to the recipient
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_value);  // decrease allowed amount
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        balances[_from] = safeSub(balances[_from], _value); // Subtract from the sender
    |        balances[_to] = safeAdd(balances[_to],_value); // Add the same to the recipient
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_value);  // decrease allowed amount
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = safeAdd(allowed[msg.sender][_spender], _addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = safeSub(oldValue, _subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) 
  > |            owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |   */
    |    function approve(address _spender, uint _value) public returns(bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = safeSub(oldValue, _subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function unlock() public onlyAuthorized {
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function lock() public onlyAuthorized {
  > |        locked = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cd317914b1147529ed2968bca639097fd5e567a.sol(116)


