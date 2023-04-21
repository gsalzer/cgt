Processing contract: /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol:HamsterToTM
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'HamsterToTM':
    |// fixed supply
    |// ----------------------------------------------------------------------------
  > |contract HamsterToTM is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(101)

[33mWarning[0m for UnhandledException in contract 'HamsterToTM':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(205)

[33mWarning[0m for UnhandledException in contract 'HamsterToTM':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HamsterToTM':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HamsterToTM':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'HamsterToTM':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'HamsterToTM':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'HamsterToTM':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'HamsterToTM':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'HamsterToTM':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'HamsterToTM':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'HamsterToTM':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes memory data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'HamsterToTM':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'HamsterToTM':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'HamsterToTM':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(92)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(92)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xd62f675b24fab8d31aaab07b22823daaa3d0f870.sol(20)


