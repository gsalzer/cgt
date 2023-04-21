Processing contract: /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol:MetrumcoinShares
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'MetrumcoinShares':
    |
    |
  > |contract MetrumcoinShares {
    |
    |    /* Standard public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(18)

[33mWarning[0m for UnhandledException in contract 'MetrumcoinShares':
    |        // of another contract to send information about
    |        // allowance
  > |        spender.receiveApproval(msg.sender, // shares owner
    |        _value, // number of shares
    |        this, // this contract's adress
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(150)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MetrumcoinShares':
    |        // of another contract to send information about
    |        // allowance
  > |        spender.receiveApproval(msg.sender, // shares owner
    |        _value, // number of shares
    |        this, // this contract's adress
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |
    |
  > |// Metrumcoin Ltd. www.metrumcoin.com 
    |
    |// 'interface':
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |
    |
  > |contract MetrumcoinShares {
    |
    |    /* Standard public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |        balanceOf[msg.sender] -= _value;
    |        // Subtract from the sender
  > |        balanceOf[_to] += _value;
    |        // Add the same to the recipient
    |
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |
    |        // Change allowances correspondingly
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |
    |        uint256 id = proposalText.push(_proposalDescription) - 1;
  > |        deadline[id] = now + _debatingPeriodInMinutes * 1 minutes;
    |
    |        // add to proposals of this shareholder:
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |        // ----->>> !!! important
    |        // store result
  > |        results[_proposalID] = result;
    |
    |        // Log and notify anyone listening that this voting finished
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |
    |
  > |// Metrumcoin Ltd. www.metrumcoin.com 
    |
    |// 'interface':
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |
    |        // make transaction
  > |        balanceOf[msg.sender] -= _value;
    |        // Subtract from the sender
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |        // contract (_spender) to spend this amount (_value) of shares
    |        // in his behalf
  > |        allowance[msg.sender][_spender] = _value;
    |        // 'spender' is another contract that implements code
    |        //  prescribed in 'shareRecipient' above
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |
    |        // Change allowances correspondingly
  > |        allowance[_from][msg.sender] -= _value;
    |
    |        // if transfer to new address -- add him to ledger
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |
    |        // add to proposals of this shareholder:
  > |        proposalsByShareholder[msg.sender].push(id);
    |
    |        // initiator always votes 'yes'
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |        // initiator always votes 'yes'
    |        votes[id].push(msg.sender);
  > |        voted[id][msg.sender] = true;
    |
    |        ProposalAdded(id, msg.sender, _proposalDescription, deadline[id]);
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'MetrumcoinShares':
    |        // add to list of voted 'yes'
    |        votes[_proposalID].push(msg.sender);
  > |        voted[_proposalID][msg.sender] = true;
    |        return "vote accepted";
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69fda08cc89cb6c63f84bfe0b059b0c38038cec8.sol(283)


