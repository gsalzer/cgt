Processing contract: /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol:BaseToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol:CustomToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaseToken':
    |}
    |
  > |contract BaseToken {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    function _transfer(address from, address to, uint value) internal {
    |        require(to != address(0));
  > |        balanceOf[from] = balanceOf[from].sub(value);
    |        balanceOf[to] = balanceOf[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |        require(to != address(0));
    |        balanceOf[from] = balanceOf[from].sub(value);
  > |        balanceOf[to] = balanceOf[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        allowance[from][msg.sender] = allowance[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    function approve(address spender, uint256 value) public returns (bool) {
    |        require(spender != address(0));
  > |        allowance[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
    |        require(spender != address(0));
  > |        allowance[msg.sender][spender] = allowance[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, allowance[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
    |        require(spender != address(0));
  > |        allowance[msg.sender][spender] = allowance[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, allowance[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(95)

[33mWarning[0m for LockedEther in contract 'CustomToken':
    |}
    |
  > |contract CustomToken is BaseToken {
    |    constructor() public {
    |        name = 'International data coin';
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |    function _transfer(address from, address to, uint value) internal {
    |        require(to != address(0));
  > |        balanceOf[from] = balanceOf[from].sub(value);
    |        balanceOf[to] = balanceOf[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |        require(to != address(0));
    |        balanceOf[from] = balanceOf[from].sub(value);
  > |        balanceOf[to] = balanceOf[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        allowance[from][msg.sender] = allowance[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |    function approve(address spender, uint256 value) public returns (bool) {
    |        require(spender != address(0));
  > |        allowance[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |    function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
    |        require(spender != address(0));
  > |        allowance[msg.sender][spender] = allowance[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, allowance[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'CustomToken':
    |    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
    |        require(spender != address(0));
  > |        allowance[msg.sender][spender] = allowance[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, allowance[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(95)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x91d8bc302b50245c6d9041ce9988d425452154a6.sol(3)


