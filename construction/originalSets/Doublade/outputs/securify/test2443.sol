Processing contract: /home/jiaming/mavs_srcs/contract@0x9efd04b45b0c745b59f90489be936439fc4e8400.sol:H123
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9efd04b45b0c745b59f90489be936439fc4e8400.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9efd04b45b0c745b59f90489be936439fc4e8400.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'H123':
    | * compliant implementations may not do it.
    | */
  > |contract H123 is IERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x9efd04b45b0c745b59f90489be936439fc4e8400.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'H123':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9efd04b45b0c745b59f90489be936439fc4e8400.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'H123':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x9efd04b45b0c745b59f90489be936439fc4e8400.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'H123':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x9efd04b45b0c745b59f90489be936439fc4e8400.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'H123':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9efd04b45b0c745b59f90489be936439fc4e8400.sol(197)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |    /**
    |    * @dev Multiplies two numbers, reverts on overflow.
  at /home/jiaming/mavs_srcs/contract@0x9efd04b45b0c745b59f90489be936439fc4e8400.sol(7)


