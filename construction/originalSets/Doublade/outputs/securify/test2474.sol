Processing contract: /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol:CTCToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CTCToken':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        multisig.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(221)

[33mWarning[0m for LockedEther in contract 'CTCToken':
    |}
    |
  > |contract CTCToken is Ownable, ERC20 {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(76)

[31mViolation[0m for TODReceiver in contract 'CTCToken':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        multisig.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(221)

[33mWarning[0m for TODReceiver in contract 'CTCToken':
    |    //refund back if not KYC approved
    |     function refundFunds(address origin) internal {
  > |        origin.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(215)

[33mWarning[0m for UnhandledException in contract 'CTCToken':
    |    //refund back if not KYC approved
    |     function refundFunds(address origin) internal {
  > |        origin.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(215)

[33mWarning[0m for UnhandledException in contract 'CTCToken':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        multisig.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CTCToken':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        multisig.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |        }
    |        
  > |        totalNumberTokenSold=totalNumberTokenSold.add(nbTokens);
    |
    |        _icoSupply = _icoSupply.sub(nbTokens);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |        totalNumberTokenSold=totalNumberTokenSold.add(nbTokens);
    |
  > |        _icoSupply = _icoSupply.sub(nbTokens);
    |
    |        TokenPurchase(msg.sender, recipient, weiAmount, nbTokens);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |            updateBalances(recipient, nbTokens);
    |         } else {
  > |            balancesWaitingKYC[recipient] = balancesWaitingKYC[recipient].add(nbTokens); 
    |         }
    |         forwardFunds();  
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    
    |    function updateBalances(address receiver, uint256 tokens) internal {
  > |        balances[multisig] = balances[multisig].sub(tokens);
    |        balances[receiver] = balances[receiver].add(tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    function updateBalances(address receiver, uint256 tokens) internal {
    |        balances[multisig] = balances[multisig].sub(tokens);
  > |        balances[receiver] = balances[receiver].add(tokens);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |         for (uint256 i = 0; i < listAddresses.length; i++) {
    |             address client = listAddresses[i];
  > |             balances[multisig] = balances[multisig].sub(balancesWaitingKYC[client]);
    |             balances[client] = balances[client].add(balancesWaitingKYC[client]);
    |             totalNumberTokenSold=totalNumberTokenSold.add(balancesWaitingKYC[client]);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |             address client = listAddresses[i];
    |             balances[multisig] = balances[multisig].sub(balancesWaitingKYC[client]);
  > |             balances[client] = balances[client].add(balancesWaitingKYC[client]);
    |             totalNumberTokenSold=totalNumberTokenSold.add(balancesWaitingKYC[client]);
    |             _icoSupply = _icoSupply.sub(balancesWaitingKYC[client]);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |             balances[multisig] = balances[multisig].sub(balancesWaitingKYC[client]);
    |             balances[client] = balances[client].add(balancesWaitingKYC[client]);
  > |             totalNumberTokenSold=totalNumberTokenSold.add(balancesWaitingKYC[client]);
    |             _icoSupply = _icoSupply.sub(balancesWaitingKYC[client]);
    |             balancesWaitingKYC[client] = 0;
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |             balances[client] = balances[client].add(balancesWaitingKYC[client]);
    |             totalNumberTokenSold=totalNumberTokenSold.add(balancesWaitingKYC[client]);
  > |             _icoSupply = _icoSupply.sub(balancesWaitingKYC[client]);
    |             balancesWaitingKYC[client] = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |             totalNumberTokenSold=totalNumberTokenSold.add(balancesWaitingKYC[client]);
    |             _icoSupply = _icoSupply.sub(balancesWaitingKYC[client]);
  > |             balancesWaitingKYC[client] = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    function addBonusForOneHolder(address holder, uint256 bonusToken) onlyOwner{
    |         require(holder != 0x0); 
  > |         balances[multisig] = balances[multisig].sub(bonusToken);
    |         balances[holder] = balances[holder].add(bonusToken);
    |         totalNumberTokenSold=totalNumberTokenSold.add(bonusToken);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |         require(holder != 0x0); 
    |         balances[multisig] = balances[multisig].sub(bonusToken);
  > |         balances[holder] = balances[holder].add(bonusToken);
    |         totalNumberTokenSold=totalNumberTokenSold.add(bonusToken);
    |         _icoSupply = _icoSupply.sub(bonusToken);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |         balances[multisig] = balances[multisig].sub(bonusToken);
    |         balances[holder] = balances[holder].add(bonusToken);
  > |         totalNumberTokenSold=totalNumberTokenSold.add(bonusToken);
    |         _icoSupply = _icoSupply.sub(bonusToken);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |         balances[holder] = balances[holder].add(bonusToken);
    |         totalNumberTokenSold=totalNumberTokenSold.add(bonusToken);
  > |         _icoSupply = _icoSupply.sub(bonusToken);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |         for (uint256 i = 0; i < listAddresses.length; i++) {
    |                require(listAddresses[i] != 0x0); 
  > |                balances[listAddresses[i]] = balances[listAddresses[i]].add(bonus[i]);
    |                balances[multisig] = balances[multisig].sub(bonus[i]);
    |                totalNumberTokenSold=totalNumberTokenSold.add(bonus[i]);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |                require(listAddresses[i] != 0x0); 
    |                balances[listAddresses[i]] = balances[listAddresses[i]].add(bonus[i]);
  > |                balances[multisig] = balances[multisig].sub(bonus[i]);
    |                totalNumberTokenSold=totalNumberTokenSold.add(bonus[i]);
    |                _icoSupply = _icoSupply.sub(bonus[i]);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |                balances[listAddresses[i]] = balances[listAddresses[i]].add(bonus[i]);
    |                balances[multisig] = balances[multisig].sub(bonus[i]);
  > |                totalNumberTokenSold=totalNumberTokenSold.add(bonus[i]);
    |                _icoSupply = _icoSupply.sub(bonus[i]);
    |         }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |                balances[multisig] = balances[multisig].sub(bonus[i]);
    |                totalNumberTokenSold=totalNumberTokenSold.add(bonus[i]);
  > |                _icoSupply = _icoSupply.sub(bonus[i]);
    |         }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |            balances[msg.sender] >= value && value > 0
    |        );
  > |        balances[msg.sender] = balances[msg.sender].sub(value);
    |        balances[to] = balances[to].add(value);
    |        Transfer(msg.sender, to, value);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |        );
    |        balances[msg.sender] = balances[msg.sender].sub(value);
  > |        balances[to] = balances[to].add(value);
    |        Transfer(msg.sender, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |            allowed[from][msg.sender] >= value && balances[from] >= value && value > 0
    |        );
  > |        balances[from] = balances[from].sub(value);
    |        balances[to] = balances[to].add(value);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |        );
    |        balances[from] = balances[from].sub(value);
  > |        balances[to] = balances[to].add(value);
    |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
    |        Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |        balances[from] = balances[from].sub(value);
    |        balances[to] = balances[to].add(value);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
    |        Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |            balances[msg.sender] >= value && value > 0
    |        );
  > |        allowed[msg.sender][spender] = value;
    |        Approval(msg.sender, spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |      owner = newOwner;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    // Set/change Multi-signature wallet address
    |    function changeMultiSignatureWallet (address _multisig) onlyOwner isActive {
  > |        multisig = _multisig;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    // Change ETH/Token exchange rate
    |    function changeTokenRate(uint _tokenPrice) onlyOwner isActive {
  > |        RATE = _tokenPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    // Set Finish Minting.
    |    function finishMinting() onlyOwner isActive {
  > |        mintingFinished = true;
    |        MintFinished();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    // Start or pause tradable to Transfer token
    |    function startTradable(bool _tradable) onlyOwner isActive {
  > |        tradable = _tradable;
    |        if (tradable)
    |            StartTradable();
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    //UpdateICODateTime(uint256 _startTime,)
    |    function updateICODate(uint256 _startTime, uint256 _endTime) public onlyOwner {
  > |        startTime = _startTime;
    |        endTime = _endTime;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    function updateICODate(uint256 _startTime, uint256 _endTime) public onlyOwner {
    |        startTime = _startTime;
  > |        endTime = _endTime;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    //Change startTime to start ICO manually
    |    function changeStartTime(uint256 _startTime) onlyOwner {
  > |        startTime = _startTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    //Change endTime to end ICO manually
    |    function changeEndTime(uint256 _endTime) onlyOwner {
  > |        endTime = _endTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    //Change total supply
    |    function changeTotalSupply(uint256 totalSupply) onlyOwner {
  > |        _totalSupply = totalSupply;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'CTCToken':
    |    
    |    function modifyCurrentHardCap(uint256 _hardCap) onlyOwner isActive {
  > |        hardCap = _hardCap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(349)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to. 
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |      owner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner {
  > |      owner = newOwner;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.11;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa16f4beee48c7090e99bd6fe7476a017f58e391f.sol(3)


