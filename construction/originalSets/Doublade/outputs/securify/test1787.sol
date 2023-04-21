Processing contract: /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol:WorkCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(89)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(17)

[33mWarning[0m for LockedEther in contract 'WorkCoin':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract WorkCoin is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(98)

[33mWarning[0m for UnhandledException in contract 'WorkCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(202)

[33mWarning[0m for UnhandledException in contract 'WorkCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WorkCoin':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WorkCoin':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'WorkCoin':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'WorkCoin':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'WorkCoin':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkCoin':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkCoin':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkCoin':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkCoin':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkCoin':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkCoin':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'WorkCoin':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x71e8d74ff1c923e369d0e70dfb09866629c4dd35.sol(89)


