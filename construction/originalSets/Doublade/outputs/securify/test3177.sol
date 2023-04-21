Processing contract: /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol:TokenMintERC20Token
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
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(262)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(44)

[33mWarning[0m for LockedEther in contract 'TokenMintERC20Token':
    | * https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
    | */
  > |contract TokenMintERC20Token is ERC20 {
    |
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMintERC20Token':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = value;
    |    emit Approval(msg.sender, spender, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMintERC20Token':
    |    require(value <= _allowed[from][msg.sender]);
    |
  > |    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |    _transfer(from, to, value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMintERC20Token':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].add(addedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMintERC20Token':
    |    require(spender != address(0));
    |
  > |    _allowed[msg.sender][spender] = (
    |      _allowed[msg.sender][spender].sub(subtractedValue));
    |    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMintERC20Token':
    |    require(to != address(0));
    |
  > |    _balances[from] = _balances[from].sub(value);
    |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenMintERC20Token':
    |
    |    _balances[from] = _balances[from].sub(value);
  > |    _balances[to] = _balances[to].add(value);
    |    emit Transfer(from, to, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd09581d32c2f68d393857e3bdacc1abc71514f9d.sol(262)


