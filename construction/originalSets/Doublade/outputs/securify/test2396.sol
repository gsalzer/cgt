Processing contract: /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol:VCPcoin
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
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |contract SafeMath {
    |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(16)

[33mWarning[0m for LockedEther in contract 'VCPcoin':
    |// token transfers
    |// ----------------------------------------------------------------------------
  > |contract VCPcoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
    |    string public  name;
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'VCPcoin':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'VCPcoin':
    |    // Get the token balance for account tokenOwner
    |    // ------------------------------------------------------------------------
  > |    function balanceOf(address tokenOwner) public constant returns (uint balance) {
    |        return balances[tokenOwner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'VCPcoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'VCPcoin':
    |    // as this should be implemented in user interfaces 
    |    // ------------------------------------------------------------------------
  > |    function approve(address spender, uint tokens) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'VCPcoin':
    |    // - 0 value transfers are allowed
    |    // ------------------------------------------------------------------------
  > |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(157)

[31mViolation[0m for MissingInputValidation in contract 'VCPcoin':
    |     // transferido a la cuenta del gastador
    |
  > |    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
    |        return allowed[tokenOwner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(167)

[31mViolation[0m for MissingInputValidation in contract 'VCPcoin':
    |        return allowed[tokenOwner][spender];
    |    }
  > |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(170)

[31mViolation[0m for MissingInputValidation in contract 'VCPcoin':
    |    // Owner can transfer out any accidentally sent ERC20 tokens
    |    // ------------------------------------------------------------------------
  > |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |
    |contract SafeMath {
  > |    function safeAdd(uint a, uint b) public pure returns (uint c) {
    |        c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |        require(c >= a);
    |    }
  > |    function safeSub(uint a, uint b) public pure returns (uint c) {
    |        require(b <= a);
    |        c = a - b;
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |        c = a - b;
    |    }
  > |    function safeMul(uint a, uint b) public pure returns (uint c) {
    |        c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |        require(a == 0 || c / a == b);
    |    }
  > |    function safeDiv(uint a, uint b) public pure returns (uint c) {
    |        require(b > 0);
    |        c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |// ----------------------------------------------------------------------------
    |contract VCPcoin is ERC20Interface, Owned, SafeMath {
  > |    string public symbol;
    |    string public  name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |contract VCPcoin is ERC20Interface, Owned, SafeMath {
    |    string public symbol;
  > |    string public  name;
    |    uint8 public decimals;
    |    uint public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |    string public symbol;
    |    string public  name;
  > |    uint8 public decimals;
    |    uint public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |    string public  name;
    |    uint8 public decimals;
  > |    uint public _totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'VCPcoin':
    |    // Total supply
    |    // ------------------------------------------------------------------------
  > |    function totalSupply() public constant returns (uint) {
    |        return _totalSupply  - balances[address(0)];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(107)

[33mWarning[0m for UnhandledException in contract 'VCPcoin':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(173)

[33mWarning[0m for UnhandledException in contract 'VCPcoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VCPcoin':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VCPcoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'VCPcoin':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = safeSub(balances[from], tokens);
    |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'VCPcoin':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'VCPcoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'VCPcoin':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = safeSub(balances[from], tokens);
  > |        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
    |        balances[to] = safeAdd(balances[to], tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'VCPcoin':
    |    }
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'VCPcoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'VCPcoin':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'VCPcoin':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b7922f5c51b43b59ea666ed77191c4cdbfca72f.sol(72)


