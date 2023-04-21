Processing contract: /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol:VirtualRealityChain
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
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(68)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(6)

[33mWarning[0m for LockedEther in contract 'VirtualRealityChain':
    |// initial fixed supply
    |// ----------------------------------------------------------------------------
  > |contract VirtualRealityChain is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealityChain':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealityChain':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealityChain':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealityChain':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealityChain':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealityChain':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealityChain':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealityChain':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealityChain':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x06247819781541bc11966ce66eeb5b18d10fee51.sol(68)


