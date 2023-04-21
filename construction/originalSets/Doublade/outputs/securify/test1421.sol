Processing contract: /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol:QETToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(84)

[33mWarning[0m for LockedEther in contract 'QETToken':
    |// QET ERC20 Token, with the addition of symbol, name and decimals
    |// ----------------------------------------------------------------------------
  > |contract QETToken is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(92)

[33mWarning[0m for UnhandledException in contract 'QETToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(196)

[33mWarning[0m for UnhandledException in contract 'QETToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QETToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QETToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'QETToken':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'QETToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'QETToken':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'QETToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'QETToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'QETToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'QETToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'QETToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'QETToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'QETToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(84)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x5a5a50ede2270eebebc7f1c97c826aa579c4c25f.sol(12)


