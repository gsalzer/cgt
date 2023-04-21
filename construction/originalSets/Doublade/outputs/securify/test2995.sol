Processing contract: /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol:RealEstateToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(98)

[33mWarning[0m for LockedEther in contract 'RealEstateToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract RealEstateToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(167)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(183)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(206)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(225)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(252)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    }
    |
  > |    function increaseSupply(uint value, address to) public returns (bool success) {
    |        _totalSupply = safeAdd(_totalSupply, value);
    |        balances[to] = safeAdd(balances[to], value);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(262)

[31mViolation[0m for MissingInputValidation in contract 'RealEstateToken':
    |    }
    |
  > |    function decreaseSupply(uint value, address from) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], value);
    |        _totalSupply = safeSub(_totalSupply, value);  
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |// ----------------------------------------------------------------------------
    |contract RealEstateToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |contract RealEstateToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'RealEstateToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |        balances[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(236)

[33mWarning[0m for UnhandledException in contract 'RealEstateToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(209)

[33mWarning[0m for UnhandledException in contract 'RealEstateToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RealEstateToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RealEstateToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |        balances[msg.sender] -= _value;            // Subtract from the sender
  > |        _totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
  > |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        _totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(255)

[31mViolation[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        _totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(257)

[31mViolation[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |
    |    function increaseSupply(uint value, address to) public returns (bool success) {
  > |        _totalSupply = safeAdd(_totalSupply, value);
    |        balances[to] = safeAdd(balances[to], value);
    |        emit Transfer(0, to, value);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |    function increaseSupply(uint value, address to) public returns (bool success) {
    |        _totalSupply = safeAdd(_totalSupply, value);
  > |        balances[to] = safeAdd(balances[to], value);
    |        emit Transfer(0, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(264)

[31mViolation[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |
    |    function decreaseSupply(uint value, address from) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], value);
    |        _totalSupply = safeSub(_totalSupply, value);  
    |        emit Transfer(from, 0, value);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |    function decreaseSupply(uint value, address from) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], value);
  > |        _totalSupply = safeSub(_totalSupply, value);  
    |        emit Transfer(from, 0, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
  > |        balances[msg.sender] -= _value;            // Subtract from the sender
    |        _totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        _totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'RealEstateToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(98)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xc4115913c4a0c730b1f36474397440df56ef03b5.sol(34)


