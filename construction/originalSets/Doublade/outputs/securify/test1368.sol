Processing contract: /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol:LendingService
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'LendingService':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract LendingService is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(87)

[33mWarning[0m for UnhandledException in contract 'LendingService':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(193)

[33mWarning[0m for UnhandledException in contract 'LendingService':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LendingService':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LendingService':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'LendingService':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'LendingService':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'LendingService':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'LendingService':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'LendingService':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'LendingService':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'LendingService':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'LendingService':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'LendingService':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'LendingService':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(78)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(78)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x56af6e06f287ea105990272c4040aa359f58b37d.sol(6)


