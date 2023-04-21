Processing contract: /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol:Nicash
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Nicash':
    |// fixed supply
    |// ----------------------------------------------------------------------------
  > |contract Nicash is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(92)

[33mWarning[0m for UnhandledException in contract 'Nicash':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(189)

[33mWarning[0m for UnhandledException in contract 'Nicash':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Nicash':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Nicash':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(204)

[31mViolation[0m for UnrestrictedWrite in contract 'Nicash':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'Nicash':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'Nicash':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Nicash':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Nicash':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Nicash':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'Nicash':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Nicash':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Nicash':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Nicash':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(84)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(84)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x977e5f1bc595db78dcc0e78a6fdfa08e988ca264.sol(15)


