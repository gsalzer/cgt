Processing contract: /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol:KomicaToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'KomicaToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract KomicaToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'KomicaToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'KomicaToken':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(140)

[31mViolation[0m for MissingInputValidation in contract 'KomicaToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'KomicaToken':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'KomicaToken':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(182)

[31mViolation[0m for MissingInputValidation in contract 'KomicaToken':
    |    // transferred to the spender's account
    |    // ------------------------------------------------------------------------
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(195)

[31mViolation[0m for MissingInputValidation in contract 'KomicaToken':
    |    // receiveApproval(...) is then executed
    |    // ------------------------------------------------------------------------
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'KomicaToken':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(216)

[31mViolation[0m for MissingInputValidation in contract 'KomicaToken':
    |
    |
  > |    function proofOfWork(uint nonce){
    |        bytes8 n = bytes8(sha3(nonce, currentChallenge));    // Generate a random hash based on input
    |        require(n >= bytes8(difficulty));                   // Check if it's under the difficulty
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |// ----------------------------------------------------------------------------
    |contract KomicaToken is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |contract KomicaToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    bytes32 public currentChallenge;                 // The coin starts with a challenge
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |    uint public _totalSupply;
    |
  > |    bytes32 public currentChallenge;                 // The coin starts with a challenge
    |    uint public timeOfLastProof = now;               // Variable to keep track of when rewards were given
    |    uint public difficulty = 10**32;                 // Difficulty starts reasonably low
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |
    |    bytes32 public currentChallenge;                 // The coin starts with a challenge
  > |    uint public timeOfLastProof = now;               // Variable to keep track of when rewards were given
    |    uint public difficulty = 10**32;                 // Difficulty starts reasonably low
    |
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |    bytes32 public currentChallenge;                 // The coin starts with a challenge
    |    uint public timeOfLastProof = now;               // Variable to keep track of when rewards were given
  > |    uint public difficulty = 10**32;                 // Difficulty starts reasonably low
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'KomicaToken':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(132)

[33mWarning[0m for UnhandledException in contract 'KomicaToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(208)

[33mWarning[0m for UnhandledException in contract 'KomicaToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KomicaToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(208)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KomicaToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'KomicaToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(183)

[31mViolation[0m for UnrestrictedWrite in contract 'KomicaToken':
    |        balances[msg.sender] += timeSinceLastProof / 60 seconds;  // The reward to the winner grows by the minute
    |
  > |        difficulty = difficulty * 10 minutes / timeSinceLastProof + 1;  // Adjusts the difficulty
    |
    |        timeOfLastProof = now;                              // Reset the counter
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'KomicaToken':
    |        difficulty = difficulty * 10 minutes / timeSinceLastProof + 1;  // Adjusts the difficulty
    |
  > |        timeOfLastProof = now;                              // Reset the counter
    |        currentChallenge = sha3(nonce, currentChallenge, block.blockhash(block.number - 1));  // Save a hash that will be used as the next proof
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'KomicaToken':
    |
    |        timeOfLastProof = now;                              // Reset the counter
  > |        currentChallenge = sha3(nonce, currentChallenge, block.blockhash(block.number - 1));  // Save a hash that will be used as the next proof
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'KomicaToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'KomicaToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'KomicaToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'KomicaToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'KomicaToken':
    |        uint timeSinceLastProof = (now - timeOfLastProof);  // Calculate time since last reward was given
    |        require(timeSinceLastProof >=  5 seconds);         // Rewards cannot be given too quickly
  > |        balances[msg.sender] += timeSinceLastProof / 60 seconds;  // The reward to the winner grows by the minute
    |
    |        difficulty = difficulty * 10 minutes / timeSinceLastProof + 1;  // Adjusts the difficulty
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'KomicaToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'KomicaToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'KomicaToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(92)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(92)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xa7c0728bf78328dc3c3e6c7e7e0da08a20eec1cb.sol(33)


