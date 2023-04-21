Processing contract: /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol:EurocoinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EurocoinToken':
    | * compliant implementations may not do it.
    | */
  > |contract EurocoinToken {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'EurocoinToken':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'EurocoinToken':
    |    function transferFrom(address from, address to, uint256 value) public returns (bool success) {
    |        require(_allowed[from][msg.sender] >= value);
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'EurocoinToken':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'EurocoinToken':
    |        require(_allowed[msg.sender][spender] >= subtractedValue);
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'EurocoinToken':
    |        require(_balances[from] >= value);
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'EurocoinToken':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol(301)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |    int256 constant private INT256_MIN = -2**255;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9fa21e671bcfb04e6868784b89c19d5aa2424ea.sol(29)


