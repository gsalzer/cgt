Processing contract: /home/jiaming/mavs_srcs/contract@0xed64869d44d89270b3719bddb025b68653ba2af7.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xed64869d44d89270b3719bddb025b68653ba2af7.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xed64869d44d89270b3719bddb025b68653ba2af7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    |
    |
  > |contract ERC20 is IERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xed64869d44d89270b3719bddb025b68653ba2af7.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xed64869d44d89270b3719bddb025b68653ba2af7.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xed64869d44d89270b3719bddb025b68653ba2af7.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(owner != address(0));
    |
  > |        _allowed[owner][spender] = value;
    |        emit Approval(owner, spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xed64869d44d89270b3719bddb025b68653ba2af7.sol(149)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xed64869d44d89270b3719bddb025b68653ba2af7.sol(23)


