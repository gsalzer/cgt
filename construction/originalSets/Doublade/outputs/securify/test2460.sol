Processing contract: /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol:VIRES
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
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(91)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(19)

[33mWarning[0m for LockedEther in contract 'VIRES':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract VIRES is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(100)

[33mWarning[0m for UnhandledException in contract 'VIRES':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(204)

[33mWarning[0m for UnhandledException in contract 'VIRES':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VIRES':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VIRES':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'VIRES':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'VIRES':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'VIRES':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'VIRES':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'VIRES':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'VIRES':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'VIRES':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'VIRES':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'VIRES':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'VIRES':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa063573142b899c5dd73e86bdeb1137e2f19bd1b.sol(91)


