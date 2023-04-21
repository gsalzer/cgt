Processing contract: /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol(64)

[33mWarning[0m for UnhandledException in contract 'ERC20':
    |    function withdraw(address _contract) external {
    |    	IERC20 token = IERC20(_contract);
  > |    	uint256 amount = token.balanceOf(address(this));
    |    	token.transfer(_owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol(166)

[33mWarning[0m for UnhandledException in contract 'ERC20':
    |    	IERC20 token = IERC20(_contract);
    |    	uint256 amount = token.balanceOf(address(this));
  > |    	token.transfer(_owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20':
    |    function withdraw(address _contract) external {
    |    	IERC20 token = IERC20(_contract);
  > |    	uint256 amount = token.balanceOf(address(this));
    |    	token.transfer(_owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol(166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20':
    |    	IERC20 token = IERC20(_contract);
    |    	uint256 amount = token.balanceOf(address(this));
  > |    	token.transfer(_owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(owner != address(0));
    |
  > |        _allowed[owner][spender] = value;
    |        emit Approval(owner, spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol(160)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x1dae0680f6b8059c8945de6a8a93009e054417b4.sol(23)


