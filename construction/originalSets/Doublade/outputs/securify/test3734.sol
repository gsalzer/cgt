Processing contract: /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol:AdviserCasperToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AdviserCasperToken':
    |}
    |
  > |contract AdviserCasperToken is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'AdviserCasperToken':
    |    function transfer(address to, uint tokens) public onlyOwner returns (bool success) {
    |        require(msg.sender == owner);
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'AdviserCasperToken':
    |    function approve(address spender, uint tokens) public returns (bool success) {
    |        require(msg.sender == owner);
  > |        allowed[msg.sender][spender] = tokens;
    |        Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'AdviserCasperToken':
    |        require(msg.sender == owner);
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'AdviserCasperToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'AdviserCasperToken':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'AdviserCasperToken':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'AdviserCasperToken':
    |        require(msg.sender == owner);
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'AdviserCasperToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        require(msg.sender == owner);
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'AdviserCasperToken':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(154)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(66)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0xf4d9f469297d7c6a8c3962aa04ab37d6cfa66ee7.sol(6)


