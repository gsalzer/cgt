Processing contract: /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol:SONICToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'SONICToken':
    |        }
    |        Transfer(msg.sender, 0, amount);             // burn baby burn
  > |        if (!msg.sender.send(amount + extra)) throw; // return back the ether or rollback if failed
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(245)

[33mWarning[0m for LockedEther in contract 'SONICToken':
    |pragma solidity ^0.4.20;
    |
  > |contract SONICToken {
    |    /* ERC20 Public variables of the token */
    |    string public constant version = 'SONIC 0.1';
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(3)

[33mWarning[0m for TODReceiver in contract 'SONICToken':
    |        }
    |        Transfer(msg.sender, 0, amount);             // burn baby burn
  > |        if (!msg.sender.send(amount + extra)) throw; // return back the ether or rollback if failed
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(245)

[33mWarning[0m for UnhandledException in contract 'SONICToken':
    |        if (!approve(_spender, _value)) return false;
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(111)

[33mWarning[0m for UnhandledException in contract 'SONICToken':
    |        }
    |        Transfer(msg.sender, 0, amount);             // burn baby burn
  > |        if (!msg.sender.send(amount + extra)) throw; // return back the ether or rollback if failed
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(245)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SONICToken':
    |        if (!approve(_spender, _value)) return false;
    |
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) {
    |            throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'SONICToken':
    |        if (withdrawalRequests[_to].sinceTime > 0) throw;    // can't move tokens when _to is pending withdrawal
    |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
  > |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
    |    }
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'SONICToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  // Check for overflows
    |        if (_value > allowance[_from][msg.sender]) throw;     // Check allowance
  > |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'SONICToken':
    |        if (_value > allowance[_from][msg.sender]) throw;     // Check allowance
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
  > |        balanceOf[_to] += _value;                             // Add the same to the recipient
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'SONICToken':
    |            throw;
    |        }
  > |        feePot += msg.value;                         // add fee to the feePot
    |        doWithdrawal(0);                             // withdraw, 0 reward
    |        WithdrawalDone(msg.sender, amount, 0);
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'SONICToken':
    |        if (amount == 0) throw;             // need to send some ETH
    |        balanceOf[msg.sender] += amount;    // mint new tokens
  > |        totalSupply += amount;              // track the supply
    |        Transfer(0, msg.sender, amount);    // notify of the event
    |        Deposited(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'SONICToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    |        if (withdrawalRequests[_to].sinceTime > 0) throw;    // can't move tokens when _to is pending withdrawal
  > |        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    |        balanceOf[_to] += _value;                            // Add the same to the recipient
    |        Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'SONICToken':
    |    returns (bool success) {
    |        if ((_value != 0) && (allowance[msg.sender][_spender] != 0)) throw;
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;                                      // we must return a bool as part of the ERC20
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'SONICToken':
    |        balanceOf[_from] -= _value;                           // Subtract from the sender
    |        balanceOf[_to] += _value;                             // Add the same to the recipient
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'SONICToken':
    |    function withdrawalInitiate() notPendingWithdrawal {
    |        WithdrawalStarted(msg.sender, balanceOf[msg.sender]);
  > |        withdrawalRequests[msg.sender] = withdrawalRequest(now, balanceOf[msg.sender]);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'SONICToken':
    |        uint256 amount = withdrawalRequests[msg.sender].amount;
    |        uint256 reward = calculateReward(r.amount);
  > |        withdrawalRequests[msg.sender].sinceTime = 0;   // This will unlock the holders tokens
    |        withdrawalRequests[msg.sender].amount = 0;      // clear the amount that was requested
    |
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'SONICToken':
    |        uint256 reward = calculateReward(r.amount);
    |        withdrawalRequests[msg.sender].sinceTime = 0;   // This will unlock the holders tokens
  > |        withdrawalRequests[msg.sender].amount = 0;      // clear the amount that was requested
    |
    |        if (reward > 0) {
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'SONICToken':
    |        }
    |
  > |        balanceOf[msg.sender] = 0;
    |        if (totalSupply < totalSupply - amount) {
    |            throw;                                   // don't let it underflow (should not happen since amount <= totalSupply)
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'SONICToken':
    |        uint256 amount = msg.value;         // amount that was sent
    |        if (amount == 0) throw;             // need to send some ETH
  > |        balanceOf[msg.sender] += amount;    // mint new tokens
    |        totalSupply += amount;              // track the supply
    |        Transfer(0, msg.sender, amount);    // notify of the event
  at /home/jiaming/mavs_srcs/contract@0xae16921eea230edac4ea76bca43ecdf885ac9a8d.sol(256)


