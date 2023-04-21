Processing contract: /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol:ECOToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ECOToken':
    |// ECOBIT ERC20 Token, with the addition of symbol, name and decimals
    |// ----------------------------------------------------------------------------
  > |contract ECOToken is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(92)

[33mWarning[0m for UnhandledException in contract 'ECOToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(196)

[33mWarning[0m for UnhandledException in contract 'ECOToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ECOToken':
    |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
  > |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ECOToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'ECOToken':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'ECOToken':
    |    // ------------------------------------------------------------------------
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'ECOToken':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'ECOToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'ECOToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'ECOToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'ECOToken':
    |    // ------------------------------------------------------------------------
    |    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'ECOToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'ECOToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'ECOToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(84)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(84)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x164505df867316eb9ac4b01be8fa34eeb6e308a1.sol(12)


