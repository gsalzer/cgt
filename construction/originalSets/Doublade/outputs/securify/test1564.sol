Processing contract: /home/jiaming/mavs_srcs/contract@0x63591b878fd3a51fb3101f09a3c72f14b79752c7.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x63591b878fd3a51fb3101f09a3c72f14b79752c7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x63591b878fd3a51fb3101f09a3c72f14b79752c7.sol:ZUE
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x63591b878fd3a51fb3101f09a3c72f14b79752c7.sol(7)

[33mWarning[0m for LockedEther in contract 'ZUE':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ZUE is IERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x63591b878fd3a51fb3101f09a3c72f14b79752c7.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'ZUE':
    |    require(to != address(0));
    |
  > |    _balances[msg.sender] = _balances[msg.sender].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x63591b878fd3a51fb3101f09a3c72f14b79752c7.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'ZUE':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x63591b878fd3a51fb3101f09a3c72f14b79752c7.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'ZUE':
    |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    emit Transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x63591b878fd3a51fb3101f09a3c72f14b79752c7.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'ZUE':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x63591b878fd3a51fb3101f09a3c72f14b79752c7.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'ZUE':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0x63591b878fd3a51fb3101f09a3c72f14b79752c7.sol(253)


