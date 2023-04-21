Processing contract: /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol:BetleyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BetleyToken':
    |            tar_addr = sec_addr;
    |        }
  > |        tar_addr.transfer(msg.value);
    |        TokenPurchase(msg.sender, recipient, weiAmount, tokenToSend);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(201)

[33mWarning[0m for LockedEther in contract 'BetleyToken':
    |}
    |
  > |contract BetleyToken is Ownable, ERC20 {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(69)

[33mWarning[0m for UnhandledException in contract 'BetleyToken':
    |            tar_addr = sec_addr;
    |        }
  > |        tar_addr.transfer(msg.value);
    |        TokenPurchase(msg.sender, recipient, weiAmount, tokenToSend);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BetleyToken':
    |            tar_addr = sec_addr;
    |        }
  > |        tar_addr.transfer(msg.value);
    |        TokenPurchase(msg.sender, recipient, weiAmount, tokenToSend);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |		}
    |        
  > |        balances[multisig] = balances[multisig].sub(tokenToSend);
    |        balances[recipient] = balances[recipient].add(tokenToSend);
    |        
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |        
    |        balances[multisig] = balances[multisig].sub(tokenToSend);
  > |        balances[recipient] = balances[recipient].add(tokenToSend);
    |        
    |        if ((now > preSaleStartTime) && (now < preSaleStartTime + 60 days)) {
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |        if ((now > preSaleStartTime) && (now < preSaleStartTime + 60 days)) {
    |            
  > |			presaleTotalNumberTokenSold = presaleTotalNumberTokenSold.add(tokenToSend);
    |            _presaleSupply = _presaleSupply.sub(tokenToSend);
    |        
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |            
    |			presaleTotalNumberTokenSold = presaleTotalNumberTokenSold.add(tokenToSend);
  > |            _presaleSupply = _presaleSupply.sub(tokenToSend);
    |        
    |		} else if ((now > mainSaleStartTime) && (now < mainSaleStartTime + 30 days)) {
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |		} else if ((now > mainSaleStartTime) && (now < mainSaleStartTime + 30 days)) {
    |            
  > |			mainsaleTotalNumberTokenSold = mainsaleTotalNumberTokenSold.add(tokenToSend);
    |            _mainsaleSupply = _mainsaleSupply.sub(tokenToSend);
    |        
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |            
    |			mainsaleTotalNumberTokenSold = mainsaleTotalNumberTokenSold.add(tokenToSend);
  > |            _mainsaleSupply = _mainsaleSupply.sub(tokenToSend);
    |        
    |		}
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |        require ((to != 0x0) && (isDistributionTransferred == 0));
    |
  > |        balances[multisig] = balances[multisig].sub(_teamSupply);
    |        balances[to] = balances[to].add(_teamSupply);
    |        Transfer(multisig, to, _teamSupply);
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |
    |        balances[multisig] = balances[multisig].sub(_teamSupply);
  > |        balances[to] = balances[to].add(_teamSupply);
    |        Transfer(multisig, to, _teamSupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |        require ((to != 0x0) && (isDistributionTransferred == 0));
    |
  > |        balances[multisig] = balances[multisig].sub(_advisorsSupply);
    |        balances[to] = balances[to].add(_advisorsSupply);
    |        Transfer(multisig, to, _advisorsSupply);
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |
    |        balances[multisig] = balances[multisig].sub(_advisorsSupply);
  > |        balances[to] = balances[to].add(_advisorsSupply);
    |        Transfer(multisig, to, _advisorsSupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |        require ((to != 0x0) && (isDistributionTransferred == 0));
    |
  > |        balances[multisig] = balances[multisig].sub(_platformSupply);
    |        balances[to] = balances[to].add(_platformSupply);
    |        Transfer(multisig, to, _platformSupply);
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |
    |        balances[multisig] = balances[multisig].sub(_platformSupply);
  > |        balances[to] = balances[to].add(_platformSupply);
    |        Transfer(multisig, to, _platformSupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |        require ((to != 0x0) && (isDistributionTransferred == 0));
    |
  > |        balances[multisig] = balances[multisig].sub(_bountySupply);
    |        balances[to] = balances[to].add(_bountySupply);
    |        Transfer(multisig, to, _bountySupply);
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |
    |        balances[multisig] = balances[multisig].sub(_bountySupply);
  > |        balances[to] = balances[to].add(_bountySupply);
    |        Transfer(multisig, to, _bountySupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |            balances[msg.sender] >= value && value > 0
    |        );
  > |        balances[msg.sender] = balances[msg.sender].sub(value);
    |        balances[to] = balances[to].add(value);
    |        Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |        );
    |        balances[msg.sender] = balances[msg.sender].sub(value);
  > |        balances[to] = balances[to].add(value);
    |        Transfer(msg.sender, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |            allowed[from][msg.sender] >= value && balances[from] >= value && value > 0
    |        );
  > |        balances[from] = balances[from].sub(value);
    |        balances[to] = balances[to].add(value);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |        );
    |        balances[from] = balances[from].sub(value);
  > |        balances[to] = balances[to].add(value);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
    |        Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |        balances[from] = balances[from].sub(value);
    |        balances[to] = balances[to].add(value);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
    |        Transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |            balances[msg.sender] >= value && value > 0
    |        );
  > |        allowed[msg.sender][spender] = value;
    |        Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |   */
    |  function transferOwnership(address newOwner) public onlyOwner {
  > |      owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |        require(recipient != 0x0);
    |        require(msg.value >= minContribAmount && msg.value <= maxContribAmount);
  > |        price = getPrice();
    |        uint256 weiAmount = msg.value;
    |        uint256 tokenToSend = weiAmount.mul(price);
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |    // Security Wallet address setting
    |    function setSecurityWalletAddr(address addr) public onlyOwner {
  > |        sec_addr = addr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'BetleyToken':
    |    // Start or pause tradable to Transfer token
    |    function startTradable(bool _tradable) public onlyOwner {
  > |        tradable = _tradable;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(248)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to. 
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |      owner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  /** 
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |   */
    |  function transferOwnership(address newOwner) public onlyOwner {
  > |      owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(53)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x606998f09ed8eec32ad1101404ec609d803ec2f3.sol(3)


