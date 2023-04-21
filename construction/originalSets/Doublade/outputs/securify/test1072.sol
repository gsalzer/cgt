Processing contract: /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol:SmartsToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol:TokenCore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(60)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(3)

[33mWarning[0m for LockedEther in contract 'TokenCore':
    |}
    |
  > |contract TokenCore is ERC20Interface {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenCore':
    |    function transfer(address to, uint tokens) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenCore':
    |
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
  > |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenCore':
    |        balances[from] = balances[from].sub(tokens);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
  > |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenCore':
    |
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenCore':
    |
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenCore':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x43a280608ae326ca1309aab0d87d63a0d2ad5da1.sol(98)


