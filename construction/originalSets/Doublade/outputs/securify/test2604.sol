Processing contract: /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol:ATTRToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'ATTRToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract ATTRToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(102)

[33mWarning[0m for UnhandledException in contract 'ATTRToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(204)

[33mWarning[0m for UnhandledException in contract 'ATTRToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ATTRToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ATTRToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'ATTRToken':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract ATTRToken is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'ATTRToken':
    |        symbol = "ATTR";
    |        name = "ATTR Token";
  > |        decimals = 18;
    |        _totalSupply = 198000000000000000000000000;
    |        balances[0x29339c46C20FD1dEd392f56818eEb53A2B89cD4C] = _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'ATTRToken':
    |        name = "ATTR Token";
    |        decimals = 18;
  > |        _totalSupply = 198000000000000000000000000;
    |        balances[0x29339c46C20FD1dEd392f56818eEb53A2B89cD4C] = _totalSupply;
    |        Transfer(address(0), 0x29339c46C20FD1dEd392f56818eEb53A2B89cD4C, _totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'ATTRToken':
    |        decimals = 18;
    |        _totalSupply = 198000000000000000000000000;
  > |        balances[0x29339c46C20FD1dEd392f56818eEb53A2B89cD4C] = _totalSupply;
    |        Transfer(address(0), 0x29339c46C20FD1dEd392f56818eEb53A2B89cD4C, _totalSupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'ATTRToken':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
  > |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'ATTRToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'ATTRToken':
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  > |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'ATTRToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'ATTRToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'ATTRToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'ATTRToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'ATTRToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'ATTRToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'ATTRToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(93)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(93)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xaa3aa47f5e3c859168982c2a57659172e0ba89d6.sol(34)


