Processing contract: /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol:MyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    | * compliant implementations may not do it.
    | */
  > |contract ERC20 is IERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(223)

[33mWarning[0m for LockedEther in contract 'MyToken':
    | * `ERC20` functions.
    | */
  > |contract MyToken is ERC20 {
    |
    |  string public name;
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        emit Approval(from, msg.sender, _allowed[from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(223)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |    /**
    |    * @dev Multiplies two numbers, reverts on overflow.
  at /home/jiaming/mavs_srcs/contract@0x388e1a3249a93932ee9c84b8fecde2a0492228f9.sol(29)


