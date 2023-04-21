Processing contract: /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol:StrategicToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(78)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(19)

[33mWarning[0m for LockedEther in contract 'StrategicToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract StrategicToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'StrategicToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'StrategicToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'StrategicToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'StrategicToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'StrategicToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(163)

[31mViolation[0m for MissingInputValidation in contract 'StrategicToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'StrategicToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'StrategicToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |// ----------------------------------------------------------------------------
    |contract StrategicToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |contract StrategicToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'StrategicToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(113)

[33mWarning[0m for UnhandledException in contract 'StrategicToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(189)

[33mWarning[0m for UnhandledException in contract 'StrategicToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrategicToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StrategicToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(206)

[31mViolation[0m for UnrestrictedWrite in contract 'StrategicToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'StrategicToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StrategicToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StrategicToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'StrategicToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'StrategicToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'StrategicToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'StrategicToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x27643f124c35904cbd6a42d10791d0b0768276d7.sol(78)


