Processing contract: /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol:PlanToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(89)

[33mWarning[0m for LockedEther in contract 'PlanToken':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract PlanToken is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(98)

[33mWarning[0m for UnhandledException in contract 'PlanToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(202)

[33mWarning[0m for UnhandledException in contract 'PlanToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'PlanToken':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'PlanToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'PlanToken':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'PlanToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'PlanToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'PlanToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'PlanToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'PlanToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'PlanToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'PlanToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(89)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x5216b9c6f7c1e0e42d64cbe608a8d46594242c6a.sol(19)


