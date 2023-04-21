Processing contract: /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol:Marcelo
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Marcelo':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract Marcelo is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(100)

[33mWarning[0m for UnhandledException in contract 'Marcelo':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(204)

[33mWarning[0m for UnhandledException in contract 'Marcelo':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Marcelo':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Marcelo':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'Marcelo':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'Marcelo':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'Marcelo':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'Marcelo':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Marcelo':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Marcelo':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Marcelo':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'Marcelo':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Marcelo':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Marcelo':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(91)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(91)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x82125afe01819dff1535d0d6276d57045291b6c0.sol(20)


