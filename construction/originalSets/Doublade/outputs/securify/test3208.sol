Processing contract: /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol:SixCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ERC20 is IERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(192)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(247)

[33mWarning[0m for LockedEther in contract 'SixCoin':
    | * `ERC20` functions.
    | */
  > |contract SixCoin is ERC20 {
    |
    |  string public constant name = "666Coin";
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'SixCoin':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'SixCoin':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'SixCoin':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'SixCoin':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'SixCoin':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'SixCoin':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd21a26785400c5b6c0bb8cce562dea2501edd227.sol(192)


