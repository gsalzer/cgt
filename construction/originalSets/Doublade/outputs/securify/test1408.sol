Processing contract: /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol:ETHEREUMFROK
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'ETHEREUMFROK':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract ETHEREUMFROK is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(102)

[33mWarning[0m for UnhandledException in contract 'ETHEREUMFROK':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(204)

[33mWarning[0m for UnhandledException in contract 'ETHEREUMFROK':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHEREUMFROK':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHEREUMFROK':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract ETHEREUMFROK is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |        symbol = "ETF";
    |        name = "ETHEREUMFROK Token";
  > |        decimals = 18;
    |        _totalSupply = 1000000000000000000000000000;
    |        balances[0xE6Ddb2E70001597AE6b567ADB6644378CFd5506E] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |        name = "ETHEREUMFROK Token";
    |        decimals = 18;
  > |        _totalSupply = 1000000000000000000000000000;
    |        balances[0xE6Ddb2E70001597AE6b567ADB6644378CFd5506E] = _totalSupply;
    |        emit Transfer(address(0), 0xE6Ddb2E70001597AE6b567ADB6644378CFd5506E, _totalSupply);
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |        decimals = 18;
    |        _totalSupply = 1000000000000000000000000000;
  > |        balances[0xE6Ddb2E70001597AE6b567ADB6644378CFd5506E] = _totalSupply;
    |        emit Transfer(address(0), 0xE6Ddb2E70001597AE6b567ADB6644378CFd5506E, _totalSupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
  > |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  > |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHEREUMFROK':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(93)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x597010716952e7af8fa570c1d5f608ca5750d8d2.sol(34)


