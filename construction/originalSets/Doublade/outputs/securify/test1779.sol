Processing contract: /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol:TootyrTokenSale
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
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(21)

[33mWarning[0m for LockedEther in contract 'TootyrTokenSale':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract TootyrTokenSale is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    // Get the token balance for account `tokenOwner`
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public view returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(149)

[31mViolation[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    // as this should be implemented in user interfaces
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(165)

[31mViolation[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(194)

[31mViolation[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    // `receiveApproval(...)` is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(204)

[31mViolation[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) internal pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |// ----------------------------------------------------------------------------
    |contract TootyrTokenSale is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |contract TootyrTokenSale is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |    uint public startDate;
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |    uint public startDate;
    |    uint public bonusEnds;
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    uint8 public decimals;
    |    uint public _totalSupply;
  > |    uint public startDate;
    |    uint public bonusEnds;
    |    uint public endDate;
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    uint public _totalSupply;
    |    uint public startDate;
  > |    uint public bonusEnds;
    |    uint public endDate;
    |
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    uint public startDate;
    |    uint public bonusEnds;
  > |    uint public endDate;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'TootyrTokenSale':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public view returns (uint) {
    |        return _totalSupply - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(131)

[33mWarning[0m for UnhandledException in contract 'TootyrTokenSale':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(207)

[33mWarning[0m for UnhandledException in contract 'TootyrTokenSale':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TootyrTokenSale':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TootyrTokenSale':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'TootyrTokenSale':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'TootyrTokenSale':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'TootyrTokenSale':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'TootyrTokenSale':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'TootyrTokenSale':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'TootyrTokenSale':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'TootyrTokenSale':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'TootyrTokenSale':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7150bf55144f12cb12ecde2064ae4a06e297bf37.sol(93)


