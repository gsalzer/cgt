Processing contract: /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol:CTADevilleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CTADevilleToken':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract CTADevilleToken is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(91)

[33mWarning[0m for UnhandledException in contract 'CTADevilleToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(195)

[33mWarning[0m for UnhandledException in contract 'CTADevilleToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CTADevilleToken':
    |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(195)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CTADevilleToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'CTADevilleToken':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'CTADevilleToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'CTADevilleToken':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'CTADevilleToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'CTADevilleToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'CTADevilleToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'CTADevilleToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'CTADevilleToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'CTADevilleToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'CTADevilleToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(82)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(82)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xd5ebfbd4920d1d867f2e10ffc060fdef532bf969.sol(10)


