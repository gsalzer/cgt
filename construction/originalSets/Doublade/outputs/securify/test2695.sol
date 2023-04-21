Processing contract: /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol:TokenERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol:_365USDToken
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
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(79)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(21)

[33mWarning[0m for LockedEther in contract '_365USDToken':
    |// Receives ETH and generates tokens
    |// ----------------------------------------------------------------------------
  > |contract _365USDToken is TokenERC20, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(88)

[31mViolation[0m for MissingInputValidation in contract '_365USDToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(72)

[31mViolation[0m for MissingInputValidation in contract '_365USDToken':
    |  
    |
  > |    mapping(address => uint) public balances;
    |    mapping(address => mapping(address => uint)) public allowed;
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(95)

[31mViolation[0m for MissingInputValidation in contract '_365USDToken':
    |
    |    mapping(address => uint) public balances;
  > |    mapping(address => mapping(address => uint)) public allowed;
    |    mapping (address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(96)

[31mViolation[0m for MissingInputValidation in contract '_365USDToken':
    |    mapping(address => uint) public balances;
    |    mapping(address => mapping(address => uint)) public allowed;
  > |    mapping (address => bool) public frozenAccount;
    |
    |     /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(97)

[31mViolation[0m for MissingInputValidation in contract '_365USDToken':
    |    // Get the token balance for account `tokenOwner`
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public view returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(138)

[31mViolation[0m for MissingInputValidation in contract '_365USDToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(162)

[31mViolation[0m for MissingInputValidation in contract '_365USDToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(198)

[31mViolation[0m for MissingInputValidation in contract '_365USDToken':
    |    // `receiveApproval(...)` is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(208)

[31mViolation[0m for MissingInputValidation in contract '_365USDToken':
    |    /// @param from Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address from, bool freeze) onlyOwner public {
    |        frozenAccount[from] = freeze;
    |        emit FrozenFunds(from, freeze);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(220)

[31mViolation[0m for MissingInputValidation in contract '_365USDToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(263)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(9)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(13)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(17)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(21)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(58)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(59)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(75)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |// ----------------------------------------------------------------------------
    |contract _365USDToken is TokenERC20, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(89)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |contract _365USDToken is TokenERC20, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(90)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |  
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(91)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |  
    |
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(92)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public view returns (uint) {
    |        return safeSub(_totalSupply , balances[address(0)]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(130)

[33mWarning[0m for MissingInputValidation in contract '_365USDToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balances[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(227)

[33mWarning[0m for UnhandledException in contract '_365USDToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(211)

[33mWarning[0m for UnrestrictedEtherFlow in contract '_365USDToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract '_365USDToken':
    |        require(!frozenAccount[to]);                       // Check if recipient is frozen
    |
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(186)

[31mViolation[0m for UnrestrictedWrite in contract '_365USDToken':
    |
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract '_365USDToken':
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  > |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract '_365USDToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);              
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract '_365USDToken':
    |        
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);              
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract '_365USDToken':
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
  > |        balances[_from] = safeSub(balances[_from], _value); // Subtract from the targeted balance
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value); // Subtract from the sender's allowance
    |        _totalSupply = safeSub(_totalSupply, _value);  // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract '_365USDToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract '_365USDToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract '_365USDToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value); // Subtract from the sender
    |        _totalSupply = safeSub(_totalSupply, _value); // Updates totalSupply
    |                     
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract '_365USDToken':
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
    |        balances[_from] = safeSub(balances[_from], _value); // Subtract from the targeted balance
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value); // Subtract from the sender's allowance
    |        _totalSupply = safeSub(_totalSupply, _value);  // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract '_365USDToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract '_365USDToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract '_365USDToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract '_365USDToken':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address from, bool freeze) onlyOwner public {
  > |        frozenAccount[from] = freeze;
    |        emit FrozenFunds(from, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb022a37a408ee80db83baa5f77564c64e72a34be.sol(221)


