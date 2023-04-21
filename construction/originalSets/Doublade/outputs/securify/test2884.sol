Processing contract: /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol:Boost
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol:BoostContainer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol:SafeMathForBoost
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Boost':
    |
    |
  > |contract Boost {
    |    using SafeMathForBoost for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Boost':
    |
    |
  > |contract Boost {
    |    using SafeMathForBoost for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Boost':
    |
    |        // The standard ERC 20 transferFrom functionality
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |
    |        doTransfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Boost':
    |        require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'Boost':
    |        if ((checkpoints.length == 0) || (checkpoints[checkpoints.length - 1].fromBlock < block.number)) {
    |            Checkpoint storage newCheckPoint = checkpoints[checkpoints.length++];
  > |            newCheckPoint.fromBlock = block.number;
    |            newCheckPoint.value = _value;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'Boost':
    |            Checkpoint storage newCheckPoint = checkpoints[checkpoints.length++];
    |            newCheckPoint.fromBlock = block.number;
  > |            newCheckPoint.value = _value;
    |        } else {
    |            Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length - 1];
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'Boost':
    |        } else {
    |            Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length - 1];
  > |            oldCheckPoint.value = _value;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(228)

[33mWarning[0m for DAOConstantGas in contract 'BoostContainer':
    |
    |        // execute transfer
  > |        msg.sender.transfer(withdrawAmount);
    |
    |        // send event
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(322)

[33mWarning[0m for DAOConstantGas in contract 'BoostContainer':
    |
    |        // execute transfer
  > |        _address.transfer(_amount);
    |
    |        // send event
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(394)

[33mWarning[0m for LockedEther in contract 'BoostContainer':
    |
    |// @title EtherContainer to store ether for investor to withdraw
  > |contract BoostContainer {
    |    using SafeMathForBoost for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(240)

[33mWarning[0m for TODAmount in contract 'BoostContainer':
    |
    |        // execute transfer
  > |        _address.transfer(_amount);
    |
    |        // send event
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(394)

[33mWarning[0m for TODReceiver in contract 'BoostContainer':
    |
    |        // execute transfer
  > |        msg.sender.transfer(withdrawAmount);
    |
    |        // send event
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(322)

[33mWarning[0m for TODReceiver in contract 'BoostContainer':
    |
    |        // execute transfer
  > |        _address.transfer(_amount);
    |
    |        // send event
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(394)

[33mWarning[0m for UnhandledException in contract 'BoostContainer':
    |
    |        // execute transfer
  > |        msg.sender.transfer(withdrawAmount);
    |
    |        // send event
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(322)

[33mWarning[0m for UnhandledException in contract 'BoostContainer':
    |
    |            // get the amount of Boost token that msg.sender had based on blockNumber
  > |            tokenAmount = boost.balanceOfAt(_address, blockNumber);
    |
    |            // tokenAmount * depositedEther / totalSupply(100,000,000)
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(360)

[33mWarning[0m for UnhandledException in contract 'BoostContainer':
    |
    |            // tokenAmount * depositedEther / totalSupply(100,000,000)
  > |            withdrawAmount = withdrawAmount.add(tokenAmount.mul(depositedEther).div(boost.totalSupply()));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(363)

[33mWarning[0m for UnhandledException in contract 'BoostContainer':
    |
    |        // execute transfer
  > |        _address.transfer(_amount);
    |
    |        // send event
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(394)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BoostContainer':
    |
    |            // get the amount of Boost token that msg.sender had based on blockNumber
  > |            tokenAmount = boost.balanceOfAt(_address, blockNumber);
    |
    |            // tokenAmount * depositedEther / totalSupply(100,000,000)
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(360)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BoostContainer':
    |
    |            // tokenAmount * depositedEther / totalSupply(100,000,000)
  > |            withdrawAmount = withdrawAmount.add(tokenAmount.mul(depositedEther).div(boost.totalSupply()));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(363)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BoostContainer':
    |
    |        // execute transfer
  > |        _address.transfer(_amount);
    |
    |        // send event
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'BoostContainer':
    |
    |/**
  > | * Math operations with safety checks
    | */
    |library SafeMathForBoost {
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'BoostContainer':
    |        require(msg.value > 0);
    |
  > |        arrayInfoForDeposit.push(InfoForDeposit({blockNumber:_blockNumber, depositedEther:msg.value}));
    |
    |        LogDepositForDividend(_blockNumber, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'BoostContainer':
    |
    |        // set the arrayInfoForDeposit.length to mapCompletionNumberForWithdraw
  > |        mapCompletionNumberForWithdraw[msg.sender] = arrayInfoForDeposit.length;
    |
    |        // execute transfer
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'BoostContainer':
    |    function changeMultiSigAddress(address _address) public onlyMultiSig {
    |        require(_address != address(0));
  > |        multiSigAddress = _address;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'BoostContainer':
    |    /// @dev called by the multiSigWallet to pause, triggers stopped state
    |    function pause() public onlyMultiSig whenNotPaused {
  > |        paused = true;
    |        LogPause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'BoostContainer':
    |    /// @dev called by the multiSigWallet to unpause, returns to normal state
    |    function unpause() public onlyMultiSig whenPaused {
  > |        paused = false;
    |        LogUnpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'BoostContainer':
    |        require(_amount > 0);
    |
  > |        mapCompletionNumberForWithdraw[_address] = arrayInfoForDeposit.length;
    |
    |        // execute transfer
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(391)

[33mWarning[0m for LockedEther in contract 'SafeMathForBoost':
    | * Math operations with safety checks
    | */
  > |library SafeMathForBoost {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xbdb686ac471b374bdc844615c768c2595c2ff2fe.sol(7)


