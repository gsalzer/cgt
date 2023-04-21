Processing contract: /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol:FARTCOIN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FARTCOIN':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract FARTCOIN is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'FARTCOIN':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'FARTCOIN':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'FARTCOIN':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'FARTCOIN':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(154)

[31mViolation[0m for MissingInputValidation in contract 'FARTCOIN':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(170)

[31mViolation[0m for MissingInputValidation in contract 'FARTCOIN':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(183)

[31mViolation[0m for MissingInputValidation in contract 'FARTCOIN':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(193)

[31mViolation[0m for MissingInputValidation in contract 'FARTCOIN':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |// ----------------------------------------------------------------------------
    |contract FARTCOIN is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |contract FARTCOIN is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    | uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    | uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;   
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |    uint8 public decimals;
    |    uint public _totalSupply;
  > | uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;   
    |    address public fundsWallet;  
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |    uint public _totalSupply;
    | uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
  > |    uint256 public totalEthInWei;   
    |    address public fundsWallet;  
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    | uint256 public unitsOneEthCanBuy;     // How many units of your coin can be bought by 1 ETH?
    |    uint256 public totalEthInWei;   
  > |    address public fundsWallet;  
    |    mapping(address => uint) balances;
    |    mapping(address => mapping(address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'FARTCOIN':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(120)

[33mWarning[0m for UnhandledException in contract 'FARTCOIN':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(196)

[33mWarning[0m for UnhandledException in contract 'FARTCOIN':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FARTCOIN':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FARTCOIN':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'FARTCOIN':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'FARTCOIN':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'FARTCOIN':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'FARTCOIN':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'FARTCOIN':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'FARTCOIN':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'FARTCOIN':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'FARTCOIN':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(80)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(80)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xa85613b58ec6de490a635602461677cd3b085df5.sol(21)


