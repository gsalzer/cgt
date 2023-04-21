Processing contract: /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol:IERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol:UNIGENEBIO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    int256 constant private INT256_MIN = -2**255;
    |
  at /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol(124)

[33mWarning[0m for LockedEther in contract 'UNIGENEBIO':
    |}
    |
  > |contract UNIGENEBIO is IERC20, IERC223 {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol(30)

[33mWarning[0m for UnhandledException in contract 'UNIGENEBIO':
    |        if(isContract(to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(to);
  > |            receiver.tokenFallback(msg.sender, value, data);
    |        }
    |        emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol(70)

[33mWarning[0m for UnhandledException in contract 'UNIGENEBIO':
    |        if(isContract(to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(to);
  > |            receiver.tokenFallback(msg.sender, value, empty);
    |        }
    |        emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UNIGENEBIO':
    |        if(isContract(to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(to);
  > |            receiver.tokenFallback(msg.sender, value, data);
    |        }
    |        emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol(70)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UNIGENEBIO':
    |        if(isContract(to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(to);
  > |            receiver.tokenFallback(msg.sender, value, empty);
    |        }
    |        emit Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'UNIGENEBIO':
    |        );
    |
  > |        _balances[msg.sender] = _balances[msg.sender].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        // Check to see if receiver is contract
  at /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'UNIGENEBIO':
    |        );
    |
  > |        _balances[msg.sender] = _balances[msg.sender].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        // Check to see if receiver is contract
  at /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'UNIGENEBIO':
    |        require(spender != address(0));
    |        
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'UNIGENEBIO':
    |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        emit Transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3cc3e02d55b8520bce3deda8d648591f1a39844d.sol(118)


