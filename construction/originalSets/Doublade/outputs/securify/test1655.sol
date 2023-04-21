Processing contract: /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol:Ambix
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol:ERC20Burnable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Ambix':
    |  part of equation and send (transfer) right part.
    |*/
  > |contract Ambix is Ownable {
    |    using SafeERC20 for ERC20Burnable;
    |    using SafeERC20 for ERC20;
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(480)

[33mWarning[0m for UnhandledException in contract 'Ambix':
    |    internal
    |  {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(357)

[33mWarning[0m for UnhandledException in contract 'Ambix':
    |
    |            // Token count multiplier
  > |            uint256 mux = ERC20(A[_ix][0]).allowance(msg.sender, this) / N[_ix][0];
    |            require(mux > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(546)

[33mWarning[0m for UnhandledException in contract 'Ambix':
    |            // Burning run
    |            for (i = 0; i < A[_ix].length; ++i)
  > |                ERC20Burnable(A[_ix][i]).burnFrom(msg.sender, mux * N[_ix][i]);
    |
    |            // Transfer up
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(551)

[33mWarning[0m for UnhandledException in contract 'Ambix':
    |            ERC20 sink = ERC20(B[0]);
    |
  > |            uint256 scale = 10 ** 18 * sink.balanceOf(this) / source.totalSupply();
    |
    |            uint256 allowance = source.allowance(msg.sender, this);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(569)

[33mWarning[0m for UnhandledException in contract 'Ambix':
    |            uint256 scale = 10 ** 18 * sink.balanceOf(this) / source.totalSupply();
    |
  > |            uint256 allowance = source.allowance(msg.sender, this);
    |            require(allowance > 0);
    |            source.burnFrom(msg.sender, allowance);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(571)

[33mWarning[0m for UnhandledException in contract 'Ambix':
    |            uint256 allowance = source.allowance(msg.sender, this);
    |            require(allowance > 0);
  > |            source.burnFrom(msg.sender, allowance);
    |
    |            uint256 reward = scale * allowance / 10 ** 18;
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(573)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ambix':
    |    internal
    |  {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(357)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ambix':
    |
    |            // Token count multiplier
  > |            uint256 mux = ERC20(A[_ix][0]).allowance(msg.sender, this) / N[_ix][0];
    |            require(mux > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(546)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ambix':
    |            // Burning run
    |            for (i = 0; i < A[_ix].length; ++i)
  > |                ERC20Burnable(A[_ix][i]).burnFrom(msg.sender, mux * N[_ix][i]);
    |
    |            // Transfer up
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(551)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ambix':
    |            ERC20 sink = ERC20(B[0]);
    |
  > |            uint256 scale = 10 ** 18 * sink.balanceOf(this) / source.totalSupply();
    |
    |            uint256 allowance = source.allowance(msg.sender, this);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(569)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ambix':
    |            uint256 scale = 10 ** 18 * sink.balanceOf(this) / source.totalSupply();
    |
  > |            uint256 allowance = source.allowance(msg.sender, this);
    |            require(allowance > 0);
    |            source.burnFrom(msg.sender, allowance);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(571)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ambix':
    |            uint256 allowance = source.allowance(msg.sender, this);
    |            require(allowance > 0);
  > |            source.burnFrom(msg.sender, allowance);
    |
    |            uint256 reward = scale * allowance / 10 ** 18;
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(573)

[31mViolation[0m for UnrestrictedWrite in contract 'Ambix':
    |pragma solidity ^0.4.24;
    |
  > |// File: openzeppelin-solidity/contracts/token/ERC20/IERC20.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Ambix':
    |  part of equation and send (transfer) right part.
    |*/
  > |contract Ambix is Ownable {
    |    using SafeERC20 for ERC20Burnable;
    |    using SafeERC20 for ERC20;
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'Ambix':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(_owner);
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'Ambix':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(456)

[33mWarning[0m for LockedEther in contract 'ERC20':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ERC20 is IERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[msg.sender] = _balances[msg.sender].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(254)

[33mWarning[0m for LockedEther in contract 'ERC20Burnable':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract ERC20Burnable is ERC20 {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[msg.sender] = _balances[msg.sender].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[msg.sender] = _balances[msg.sender].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    require(amount <= _balances[account]);
    |
  > |    _totalSupply = _totalSupply.sub(amount);
    |    _balances[account] = _balances[account].sub(amount);
    |    emit Transfer(account, address(0), amount);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |
    |    _totalSupply = _totalSupply.sub(amount);
  > |    _balances[account] = _balances[account].sub(amount);
    |    emit Transfer(account, address(0), amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Burnable':
    |    // Should https://github.com/OpenZeppelin/zeppelin-solidity/issues/707 be accepted,
    |    // this function needs to emit an event with the updated approval.
  > |    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(
    |      amount);
    |    _burn(account, amount);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(301)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address private _owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(389)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @return the address of the owner.
    |   */
  > |  function owner() public view returns(address) {
    |    return _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(411)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @return true if `msg.sender` is the owner of the contract.
    |   */
  > |  function isOwner() public view returns(bool) {
    |    return msg.sender == _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(426)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(_owner);
    |    _owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(436)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    _transferOwnership(newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(445)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address newOwner) internal {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(453)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(_owner);
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(456)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(
    |    IERC20 token,
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(349)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x695eed3cf97ed07615a9b3ed0c588f75a6f6d44d.sol(44)


