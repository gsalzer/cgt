Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:Arbitrable
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:Arbitrator
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:BlockHashRNG
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:IArbitrable
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:KlerosLiquid
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:MiniMeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:MiniMeTokenFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:Pinakion
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:RNG
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:SortitionSumTreeFactory
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol:TokenController
[33mWarning[0m for DAOConstantGas in contract 'BlockHashRNG':
    |            uint rewardToSend = reward[_block];
    |            reward[_block] = 0;
  > |            msg.sender.send(rewardToSend); // Note that the use of send is on purpose as we don't want to block in case msg.sender has a fallback issue.
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1191)

[33mWarning[0m for LockedEther in contract 'BlockHashRNG':
    | *  The first party to call the save function gets the reward.
    | */
  > |contract BlockHashRNG is RNG {
    |
    |    mapping (uint => uint) public randomNumber; // randomNumber[block] is the random number for this block, 0 otherwise.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1152)

[33mWarning[0m for TODReceiver in contract 'BlockHashRNG':
    |            uint rewardToSend = reward[_block];
    |            reward[_block] = 0;
  > |            msg.sender.send(rewardToSend); // Note that the use of send is on purpose as we don't want to block in case msg.sender has a fallback issue.
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1191)

[31mViolation[0m for UnhandledException in contract 'BlockHashRNG':
    |            uint rewardToSend = reward[_block];
    |            reward[_block] = 0;
  > |            msg.sender.send(rewardToSend); // Note that the use of send is on purpose as we don't want to block in case msg.sender has a fallback issue.
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1191)

[31mViolation[0m for UnrestrictedWrite in contract 'BlockHashRNG':
    |     *  @param _block Block the random number is linked to.
    |     */
  > |    function contribute(uint _block) public payable { reward[_block] += msg.value; }
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1162)

[31mViolation[0m for UnrestrictedWrite in contract 'BlockHashRNG':
    |    function saveRN(uint _block) public {
    |        if (blockhash(_block) != 0x0)
  > |            randomNumber[_block] = uint(blockhash(_block));
    |        else
    |            randomNumber[_block] = getFallbackRN(_block);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1184)

[31mViolation[0m for UnrestrictedWrite in contract 'BlockHashRNG':
    |            randomNumber[_block] = uint(blockhash(_block));
    |        else
  > |            randomNumber[_block] = getFallbackRN(_block);
    |
    |        if (randomNumber[_block] != 0) { // If the number is set.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1186)

[31mViolation[0m for UnrestrictedWrite in contract 'BlockHashRNG':
    |        if (randomNumber[_block] != 0) { // If the number is set.
    |            uint rewardToSend = reward[_block];
  > |            reward[_block] = 0;
    |            msg.sender.send(rewardToSend); // Note that the use of send is on purpose as we don't want to block in case msg.sender has a fallback issue.
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1190)

[33mWarning[0m for LockedEther in contract 'Controlled':
    |pragma solidity ^0.4.18;
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(243)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) public onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { require(msg.sender == controller); _; }
    |
  > |    address public controller;
    |
    |    function Controlled() public { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(255)

[33mWarning[0m for DAO in contract 'KlerosLiquid':
    |     */
    |    function executeGovernorProposal(address _destination, uint _amount, bytes _data) external onlyByGovernor {
  > |        require(_destination.call.value(_amount)(_data)); // solium-disable-line security/no-call-value
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1478)

[31mViolation[0m for DAOConstantGas in contract 'KlerosLiquid':
    |                    pinakion.transfer(vote.account, tokenReward);
    |                    // Intentional use to avoid blocking.
  > |                    vote.account.send(ETHReward); // solium-disable-line security/no-send
    |                    emit TokenAndETHShift(vote.account, _disputeID, int(tokenReward), int(ETHReward));
    |                    jurors[vote.account].lockedTokens -= dispute.tokensAtStakePerJuror[_appeal];
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1856)

[33mWarning[0m for LockedEther in contract 'KlerosLiquid':
    | *  @dev The main Kleros contract with dispute resolution logic for the Athena release.
    | */
  > |contract KlerosLiquid is TokenController, Arbitrator {
    |    /* Enums */
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1246)

[33mWarning[0m for TODAmount in contract 'KlerosLiquid':
    |     */
    |    function executeGovernorProposal(address _destination, uint _amount, bytes _data) external onlyByGovernor {
  > |        require(_destination.call.value(_amount)(_data)); // solium-disable-line security/no-call-value
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1478)

[33mWarning[0m for TODReceiver in contract 'KlerosLiquid':
    |     */
    |    function executeGovernorProposal(address _destination, uint _amount, bytes _data) external onlyByGovernor {
  > |        require(_destination.call.value(_amount)(_data)); // solium-disable-line security/no-call-value
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1478)

[31mViolation[0m for UnhandledException in contract 'KlerosLiquid':
    |                    pinakion.transfer(vote.account, tokenReward);
    |                    // Intentional use to avoid blocking.
  > |                    vote.account.send(ETHReward); // solium-disable-line security/no-send
    |                    emit TokenAndETHShift(vote.account, _disputeID, int(tokenReward), int(ETHReward));
    |                    jurors[vote.account].lockedTokens -= dispute.tokensAtStakePerJuror[_appeal];
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1856)

[31mViolation[0m for UnhandledException in contract 'KlerosLiquid':
    |                if (dispute.votesInEachRound[_appeal] == 0 || !dispute.voteCounters[dispute.voteCounters.length - 1].tied && dispute.voteCounters[_appeal].counts[dispute.voteCounters[dispute.voteCounters.length - 1].winningChoice] == 0) {
    |                    // Intentional use to avoid blocking.
  > |                    governor.send(dispute.totalFeesForJurors[_appeal]); // solium-disable-line security/no-send
    |                    pinakion.transfer(governor, penaltiesInRoundCache);
    |                } else if (i + 1 < end) {
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1881)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |     */
    |    function executeGovernorProposal(address _destination, uint _amount, bytes _data) external onlyByGovernor {
  > |        require(_destination.call.value(_amount)(_data)); // solium-disable-line security/no-call-value
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1478)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |        if (phase == Phase.generating) {
    |            RNBlock = block.number + 1;
  > |            RNGenerator.requestRN(RNBlock);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1502)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |            require(disputesWithoutJurors > 0, "There are no disputes that need jurors.");
    |            RNBlock = block.number + 1;
  > |            RNGenerator.requestRN(RNBlock);
    |            phase = Phase.generating;
    |        } else if (phase == Phase.generating) {
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1615)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |            phase = Phase.generating;
    |        } else if (phase == Phase.generating) {
  > |            RN = RNGenerator.getUncorrelatedRN(RNBlock);
    |            require(RN != 0, "Random number is not ready yet.");
    |            phase = Phase.drawing;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1618)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |
    |                    // Reward.
  > |                    pinakion.transfer(vote.account, tokenReward);
    |                    // Intentional use to avoid blocking.
    |                    vote.account.send(ETHReward); // solium-disable-line security/no-send
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1854)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |
    |                    // Penalize.
  > |                    uint penalty = dispute.tokensAtStakePerJuror[_appeal] > pinakion.balanceOf(vote.account) ? pinakion.balanceOf(vote.account) : dispute.tokensAtStakePerJuror[_appeal];
    |                    pinakion.transferFrom(vote.account, this, penalty);
    |                    emit TokenAndETHShift(vote.account, _disputeID, -int(penalty), 0);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1864)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |                    // Penalize.
    |                    uint penalty = dispute.tokensAtStakePerJuror[_appeal] > pinakion.balanceOf(vote.account) ? pinakion.balanceOf(vote.account) : dispute.tokensAtStakePerJuror[_appeal];
  > |                    pinakion.transferFrom(vote.account, this, penalty);
    |                    emit TokenAndETHShift(vote.account, _disputeID, -int(penalty), 0);
    |                    penaltiesInRoundCache += penalty;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1865)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |
    |                    // Unstake juror if his penalty made balance less than his total stake or if he lost due to inactivity.
  > |                    if (pinakion.balanceOf(vote.account) < jurors[vote.account].stakedTokens || !vote.voted)
    |                        for (uint j = 0; j < jurors[vote.account].subcourtIDs.length; j++)
    |                            _setStake(vote.account, jurors[vote.account].subcourtIDs[j], 0);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1871)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |                    // Intentional use to avoid blocking.
    |                    governor.send(dispute.totalFeesForJurors[_appeal]); // solium-disable-line security/no-send
  > |                    pinakion.transfer(governor, penaltiesInRoundCache);
    |                } else if (i + 1 < end) {
    |                    // Compute rewards because we are going into rewarding.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1882)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |        uint winningChoice = dispute.voteCounters[dispute.voteCounters.length - 1].tied ? 0
    |            : dispute.voteCounters[dispute.voteCounters.length - 1].winningChoice;
  > |        dispute.arbitrated.rule(_disputeID, winningChoice);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1904)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |    function onTransfer(address _from, address _to, uint _amount) public returns(bool allowed) {
    |        if (lockInsolventTransfers) { // Never block penalties or rewards.
  > |            uint newBalance = pinakion.balanceOf(_from) - _amount;
    |            if (newBalance < jurors[_from].stakedTokens || newBalance < jurors[_from].lockedTokens) return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1985)

[33mWarning[0m for UnhandledException in contract 'KlerosLiquid':
    |            return false; // Maximum stake paths reached.
    |        uint newTotalStake = juror.stakedTokens - currentStake + _stake; // Can't overflow because _stake is a uint128.
  > |        if (!(_stake == 0 || pinakion.balanceOf(_account) >= newTotalStake))
    |            return false; // The juror's total amount of staked tokens cannot be higher than the juror's balance.
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(2091)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |     */
    |    function executeGovernorProposal(address _destination, uint _amount, bytes _data) external onlyByGovernor {
  > |        require(_destination.call.value(_amount)(_data)); // solium-disable-line security/no-call-value
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1478)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |        if (phase == Phase.generating) {
    |            RNBlock = block.number + 1;
  > |            RNGenerator.requestRN(RNBlock);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1502)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |            require(disputesWithoutJurors > 0, "There are no disputes that need jurors.");
    |            RNBlock = block.number + 1;
  > |            RNGenerator.requestRN(RNBlock);
    |            phase = Phase.generating;
    |        } else if (phase == Phase.generating) {
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1615)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |            phase = Phase.generating;
    |        } else if (phase == Phase.generating) {
  > |            RN = RNGenerator.getUncorrelatedRN(RNBlock);
    |            require(RN != 0, "Random number is not ready yet.");
    |            phase = Phase.drawing;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1618)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |
    |                    // Reward.
  > |                    pinakion.transfer(vote.account, tokenReward);
    |                    // Intentional use to avoid blocking.
    |                    vote.account.send(ETHReward); // solium-disable-line security/no-send
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1854)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |
    |                    // Penalize.
  > |                    uint penalty = dispute.tokensAtStakePerJuror[_appeal] > pinakion.balanceOf(vote.account) ? pinakion.balanceOf(vote.account) : dispute.tokensAtStakePerJuror[_appeal];
    |                    pinakion.transferFrom(vote.account, this, penalty);
    |                    emit TokenAndETHShift(vote.account, _disputeID, -int(penalty), 0);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1864)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |                    // Penalize.
    |                    uint penalty = dispute.tokensAtStakePerJuror[_appeal] > pinakion.balanceOf(vote.account) ? pinakion.balanceOf(vote.account) : dispute.tokensAtStakePerJuror[_appeal];
  > |                    pinakion.transferFrom(vote.account, this, penalty);
    |                    emit TokenAndETHShift(vote.account, _disputeID, -int(penalty), 0);
    |                    penaltiesInRoundCache += penalty;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1865)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |
    |                    // Unstake juror if his penalty made balance less than his total stake or if he lost due to inactivity.
  > |                    if (pinakion.balanceOf(vote.account) < jurors[vote.account].stakedTokens || !vote.voted)
    |                        for (uint j = 0; j < jurors[vote.account].subcourtIDs.length; j++)
    |                            _setStake(vote.account, jurors[vote.account].subcourtIDs[j], 0);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1871)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |                    // Intentional use to avoid blocking.
    |                    governor.send(dispute.totalFeesForJurors[_appeal]); // solium-disable-line security/no-send
  > |                    pinakion.transfer(governor, penaltiesInRoundCache);
    |                } else if (i + 1 < end) {
    |                    // Compute rewards because we are going into rewarding.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1882)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |        uint winningChoice = dispute.voteCounters[dispute.voteCounters.length - 1].tied ? 0
    |            : dispute.voteCounters[dispute.voteCounters.length - 1].winningChoice;
  > |        dispute.arbitrated.rule(_disputeID, winningChoice);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1904)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |    function onTransfer(address _from, address _to, uint _amount) public returns(bool allowed) {
    |        if (lockInsolventTransfers) { // Never block penalties or rewards.
  > |            uint newBalance = pinakion.balanceOf(_from) - _amount;
    |            if (newBalance < jurors[_from].stakedTokens || newBalance < jurors[_from].lockedTokens) return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1985)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KlerosLiquid':
    |            return false; // Maximum stake paths reached.
    |        uint newTotalStake = juror.stakedTokens - currentStake + _stake; // Can't overflow because _stake is a uint128.
  > |        if (!(_stake == 0 || pinakion.balanceOf(_account) >= newTotalStake))
    |            return false; // The juror's total amount of staked tokens cannot be higher than the juror's balance.
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(2091)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |/**
  > |*  @title Random Number Generator Standard
    |*  @author Clément Lesaege - <clement@lesaege.com>
    |*
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    | *  @dev The main Kleros contract with dispute resolution logic for the Athena release.
    | */
  > |contract KlerosLiquid is TokenController, Arbitrator {
    |    /* Enums */
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1246)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |     */
    |    function changeRNGenerator(RNG _RNGenerator) external onlyByGovernor {
  > |        RNGenerator = _RNGenerator;
    |        if (phase == Phase.generating) {
    |            RNBlock = block.number + 1;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1499)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        RNGenerator = _RNGenerator;
    |        if (phase == Phase.generating) {
  > |            RNBlock = block.number + 1;
    |            RNGenerator.requestRN(RNBlock);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1501)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        // Create the subcourt.
    |        uint96 subcourtID = uint96(
  > |            courts.push(Court({
    |                parent: _parent,
    |                children: new uint[](0),
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1544)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |     */
    |    function changeSubcourtAlpha(uint96 _subcourtID, uint _alpha) external onlyByGovernor {
  > |        courts[_subcourtID].alpha = _alpha;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1582)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |     */
    |    function changeSubcourtJurorFee(uint96 _subcourtID, uint _feeForJuror) external onlyByGovernor {
  > |        courts[_subcourtID].feeForJuror = _feeForJuror;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1590)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |     */
    |    function changeSubcourtJurorsForJump(uint96 _subcourtID, uint _jurorsForCourtJump) external onlyByGovernor {
  > |        courts[_subcourtID].jurorsForCourtJump = _jurorsForCourtJump;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1598)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |            require(dispute.votes[dispute.votes.length - 1][_voteIDs[i]].account == msg.sender, "The caller has to own the vote.");
    |            require(dispute.votes[dispute.votes.length - 1][_voteIDs[i]].commit == bytes32(0), "Already committed this vote.");
  > |            dispute.votes[dispute.votes.length - 1][_voteIDs[i]].commit = _commit;
    |        }
    |        dispute.commitsInRound += _voteIDs.length;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1739)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |            dispute.votes[dispute.votes.length - 1][_voteIDs[i]].commit = _commit;
    |        }
  > |        dispute.commitsInRound += _voteIDs.length;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1741)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |            );
    |            require(!dispute.votes[dispute.votes.length - 1][_voteIDs[i]].voted, "Vote already cast.");
  > |            dispute.votes[dispute.votes.length - 1][_voteIDs[i]].choice = _choice;
    |            dispute.votes[dispute.votes.length - 1][_voteIDs[i]].voted = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1765)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |            require(!dispute.votes[dispute.votes.length - 1][_voteIDs[i]].voted, "Vote already cast.");
    |            dispute.votes[dispute.votes.length - 1][_voteIDs[i]].choice = _choice;
  > |            dispute.votes[dispute.votes.length - 1][_voteIDs[i]].voted = true;
    |        }
    |        dispute.votesInEachRound[dispute.votes.length - 1] += _voteIDs.length;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1766)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |            dispute.votes[dispute.votes.length - 1][_voteIDs[i]].voted = true;
    |        }
  > |        dispute.votesInEachRound[dispute.votes.length - 1] += _voteIDs.length;
    |
    |        // Update winning choice.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1768)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        // Update winning choice.
    |        VoteCounter storage voteCounter = dispute.voteCounters[dispute.voteCounters.length - 1];
  > |        voteCounter.counts[_choice] += _voteIDs.length;
    |        if (_choice == voteCounter.winningChoice) { // Voted for the winning choice.
    |            if (voteCounter.tied) voteCounter.tied = false; // Potentially broke tie.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1772)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        voteCounter.counts[_choice] += _voteIDs.length;
    |        if (_choice == voteCounter.winningChoice) { // Voted for the winning choice.
  > |            if (voteCounter.tied) voteCounter.tied = false; // Potentially broke tie.
    |        } else { // Voted for another choice.
    |            if (voteCounter.counts[_choice] == voteCounter.counts[voteCounter.winningChoice]) { // Tie.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1774)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        } else { // Voted for another choice.
    |            if (voteCounter.counts[_choice] == voteCounter.counts[voteCounter.winningChoice]) { // Tie.
  > |                if (!voteCounter.tied) voteCounter.tied = true;
    |            } else if (voteCounter.counts[_choice] > voteCounter.counts[voteCounter.winningChoice]) { // New winner.
    |                voteCounter.winningChoice = _choice;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1777)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |                if (!voteCounter.tied) voteCounter.tied = true;
    |            } else if (voteCounter.counts[_choice] > voteCounter.counts[voteCounter.winningChoice]) { // New winner.
  > |                voteCounter.winningChoice = _choice;
    |                voteCounter.tied = false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1779)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |            } else if (voteCounter.counts[_choice] > voteCounter.counts[voteCounter.winningChoice]) { // New winner.
    |                voteCounter.winningChoice = _choice;
  > |                voteCounter.tied = false;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1780)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        // As many votes that can be afforded by the provided funds.
    |        dispute.votes[dispute.votes.length++].length = msg.value / courts[dispute.subcourtID].feeForJuror;
  > |        dispute.voteCounters[dispute.voteCounters.length++].tied = true;
    |        dispute.tokensAtStakePerJuror.push((courts[dispute.subcourtID].minStake * courts[dispute.subcourtID].alpha) / ALPHA_DIVISOR);
    |        dispute.totalFeesForJurors.push(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1928)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.votes[dispute.votes.length++].length = msg.value / courts[dispute.subcourtID].feeForJuror;
    |        dispute.voteCounters[dispute.voteCounters.length++].tied = true;
  > |        dispute.tokensAtStakePerJuror.push((courts[dispute.subcourtID].minStake * courts[dispute.subcourtID].alpha) / ALPHA_DIVISOR);
    |        dispute.totalFeesForJurors.push(msg.value);
    |        dispute.votesInEachRound.push(0);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1929)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.voteCounters[dispute.voteCounters.length++].tied = true;
    |        dispute.tokensAtStakePerJuror.push((courts[dispute.subcourtID].minStake * courts[dispute.subcourtID].alpha) / ALPHA_DIVISOR);
  > |        dispute.totalFeesForJurors.push(msg.value);
    |        dispute.votesInEachRound.push(0);
    |        dispute.repartitionsInEachRound.push(0);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1930)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.tokensAtStakePerJuror.push((courts[dispute.subcourtID].minStake * courts[dispute.subcourtID].alpha) / ALPHA_DIVISOR);
    |        dispute.totalFeesForJurors.push(msg.value);
  > |        dispute.votesInEachRound.push(0);
    |        dispute.repartitionsInEachRound.push(0);
    |        dispute.penaltiesInEachRound.push(0);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1931)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.totalFeesForJurors.push(msg.value);
    |        dispute.votesInEachRound.push(0);
  > |        dispute.repartitionsInEachRound.push(0);
    |        dispute.penaltiesInEachRound.push(0);
    |        disputesWithoutJurors++;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1932)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.votesInEachRound.push(0);
    |        dispute.repartitionsInEachRound.push(0);
  > |        dispute.penaltiesInEachRound.push(0);
    |        disputesWithoutJurors++;
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1933)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.repartitionsInEachRound.push(0);
    |        dispute.penaltiesInEachRound.push(0);
  > |        disputesWithoutJurors++;
    |
    |        emit DisputeCreation(disputeID, Arbitrable(msg.sender));
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1934)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        );
    |        if (dispute.votes[dispute.votes.length - 1].length >= courts[dispute.subcourtID].jurorsForCourtJump) // Jump to parent subcourt.
  > |            dispute.subcourtID = courts[dispute.subcourtID].parent;
    |        dispute.period = Period.evidence;
    |        dispute.lastPeriodChange = now;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1953)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        if (dispute.votes[dispute.votes.length - 1].length >= courts[dispute.subcourtID].jurorsForCourtJump) // Jump to parent subcourt.
    |            dispute.subcourtID = courts[dispute.subcourtID].parent;
  > |        dispute.period = Period.evidence;
    |        dispute.lastPeriodChange = now;
    |        // As many votes that can be afforded by the provided funds.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1954)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |            dispute.subcourtID = courts[dispute.subcourtID].parent;
    |        dispute.period = Period.evidence;
  > |        dispute.lastPeriodChange = now;
    |        // As many votes that can be afforded by the provided funds.
    |        dispute.votes[dispute.votes.length++].length = msg.value / courts[dispute.subcourtID].feeForJuror;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1955)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        // As many votes that can be afforded by the provided funds.
    |        dispute.votes[dispute.votes.length++].length = msg.value / courts[dispute.subcourtID].feeForJuror;
  > |        dispute.voteCounters[dispute.voteCounters.length++].tied = true;
    |        dispute.tokensAtStakePerJuror.push((courts[dispute.subcourtID].minStake * courts[dispute.subcourtID].alpha) / ALPHA_DIVISOR);
    |        dispute.totalFeesForJurors.push(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1958)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.votes[dispute.votes.length++].length = msg.value / courts[dispute.subcourtID].feeForJuror;
    |        dispute.voteCounters[dispute.voteCounters.length++].tied = true;
  > |        dispute.tokensAtStakePerJuror.push((courts[dispute.subcourtID].minStake * courts[dispute.subcourtID].alpha) / ALPHA_DIVISOR);
    |        dispute.totalFeesForJurors.push(msg.value);
    |        dispute.drawsInRound = 0;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1959)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.voteCounters[dispute.voteCounters.length++].tied = true;
    |        dispute.tokensAtStakePerJuror.push((courts[dispute.subcourtID].minStake * courts[dispute.subcourtID].alpha) / ALPHA_DIVISOR);
  > |        dispute.totalFeesForJurors.push(msg.value);
    |        dispute.drawsInRound = 0;
    |        dispute.commitsInRound = 0;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1960)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.tokensAtStakePerJuror.push((courts[dispute.subcourtID].minStake * courts[dispute.subcourtID].alpha) / ALPHA_DIVISOR);
    |        dispute.totalFeesForJurors.push(msg.value);
  > |        dispute.drawsInRound = 0;
    |        dispute.commitsInRound = 0;
    |        dispute.votesInEachRound.push(0);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1961)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.totalFeesForJurors.push(msg.value);
    |        dispute.drawsInRound = 0;
  > |        dispute.commitsInRound = 0;
    |        dispute.votesInEachRound.push(0);
    |        dispute.repartitionsInEachRound.push(0);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1962)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.drawsInRound = 0;
    |        dispute.commitsInRound = 0;
  > |        dispute.votesInEachRound.push(0);
    |        dispute.repartitionsInEachRound.push(0);
    |        dispute.penaltiesInEachRound.push(0);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1963)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.commitsInRound = 0;
    |        dispute.votesInEachRound.push(0);
  > |        dispute.repartitionsInEachRound.push(0);
    |        dispute.penaltiesInEachRound.push(0);
    |        disputesWithoutJurors++;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1964)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.votesInEachRound.push(0);
    |        dispute.repartitionsInEachRound.push(0);
  > |        dispute.penaltiesInEachRound.push(0);
    |        disputesWithoutJurors++;
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1965)

[33mWarning[0m for UnrestrictedWrite in contract 'KlerosLiquid':
    |        dispute.repartitionsInEachRound.push(0);
    |        dispute.penaltiesInEachRound.push(0);
  > |        disputesWithoutJurors++;
    |
    |        emit AppealDecision(_disputeID, Arbitrable(msg.sender));
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1966)

[33mWarning[0m for DAO in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(741)

[33mWarning[0m for DAOConstantGas in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(754)

[33mWarning[0m for LockedEther in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(293)

[31mViolation[0m for TODAmount in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(754)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(741)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(754)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(443)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(484)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(513)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(549)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(574)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(607)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(616)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(741)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(754)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(759)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(760)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(443)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(484)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(513)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(549)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(574)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(607)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(616)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(741)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(754)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(759)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(760)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |            // The standard ERC 20 transferFrom functionality
    |            require(allowed[_from][msg.sender] >= _amount);
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        doTransfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(711)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(712)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(715)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) public onlyController {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(668)

[33mWarning[0m for LockedEther in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(786)

[31mViolation[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |    /// @param _transfersEnabled If true, tokens will be able to be transferred
    |    /// @return The address of the new token contract
  > |    function createCloneToken(
    |        address _parentToken,
    |        uint _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(798)

[33mWarning[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(786)

[33mWarning[0m for UnhandledException in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(816)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(816)

[33mWarning[0m for DAO in contract 'Pinakion':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(741)

[33mWarning[0m for DAOConstantGas in contract 'Pinakion':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(754)

[33mWarning[0m for LockedEther in contract 'Pinakion':
    |pragma solidity ^0.4.18;
    |
  > |contract Pinakion is MiniMeToken {
    |
    |    /** @notice Constructor to create a MiniMeTokenERC20
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(831)

[31mViolation[0m for TODAmount in contract 'Pinakion':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(754)

[31mViolation[0m for TODReceiver in contract 'Pinakion':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(741)

[31mViolation[0m for TODReceiver in contract 'Pinakion':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(754)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(443)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(513)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(549)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(574)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(607)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(616)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(741)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(754)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(759)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(760)

[33mWarning[0m for UnhandledException in contract 'Pinakion':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount), "Token controller does not approve.");
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(872)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(443)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(513)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(549)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(574)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(607)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(616)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(741)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(754)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(759)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(760)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Pinakion':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount), "Token controller does not approve.");
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(872)

[33mWarning[0m for UnrestrictedWrite in contract 'Pinakion':
    |            // The standard ERC 20 transferFrom functionality
    |            require(allowed[_from][msg.sender] >= _amount);
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        doTransfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'Pinakion':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(711)

[33mWarning[0m for UnrestrictedWrite in contract 'Pinakion':
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(712)

[33mWarning[0m for UnrestrictedWrite in contract 'Pinakion':
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(715)

[33mWarning[0m for UnrestrictedWrite in contract 'Pinakion':
    |pragma solidity ^0.4.18;
    |
  > |contract Pinakion is MiniMeToken {
    |
    |    /** @notice Constructor to create a MiniMeTokenERC20
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(831)

[33mWarning[0m for UnrestrictedWrite in contract 'Pinakion':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(875)

[33mWarning[0m for UnrestrictedWrite in contract 'Pinakion':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'Pinakion':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) public onlyController {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(668)

[31mViolation[0m for LockedEther in contract 'SortitionSumTreeFactory':
    | *  @dev A factory of trees that keep track of staked values for sortition.
    | */
  > |library SortitionSumTreeFactory {
    |    /* Structs */
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(922)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |/**
  > |*  @title Random Number Generator Standard
    |*  @author Clément Lesaege - <clement@lesaege.com>
    |*
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    | *  @dev A factory of trees that keep track of staked values for sortition.
    | */
  > |library SortitionSumTreeFactory {
    |    /* Structs */
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(922)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |        require(tree.K == 0, "Tree already exists.");
    |        require(_K > 1, "K must be greater than one.");
  > |        tree.K = _K;
    |        tree.stack.length = 0;
    |        tree.nodes.length = 0;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(952)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |        tree.stack.length = 0;
    |        tree.nodes.length = 0;
  > |        tree.nodes.push(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(955)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                    // Get the index and append the value.
    |                    treeIndex = tree.nodes.length;
  > |                    tree.nodes.push(_value);
    |
    |                    // Potentially append a new node and make the parent a sum node.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(978)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                        bytes32 parentID = tree.nodeIndexesToIDs[parentIndex];
    |                        uint newIndex = treeIndex + 1;
  > |                        tree.nodes.push(tree.nodes[parentIndex]);
    |                        delete tree.nodeIndexesToIDs[parentIndex];
    |                        tree.IDsToNodeIndexes[parentID] = newIndex;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(985)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                        uint newIndex = treeIndex + 1;
    |                        tree.nodes.push(tree.nodes[parentIndex]);
  > |                        delete tree.nodeIndexesToIDs[parentIndex];
    |                        tree.IDsToNodeIndexes[parentID] = newIndex;
    |                        tree.nodeIndexesToIDs[newIndex] = parentID;
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(986)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                        tree.nodes.push(tree.nodes[parentIndex]);
    |                        delete tree.nodeIndexesToIDs[parentIndex];
  > |                        tree.IDsToNodeIndexes[parentID] = newIndex;
    |                        tree.nodeIndexesToIDs[newIndex] = parentID;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(987)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                        delete tree.nodeIndexesToIDs[parentIndex];
    |                        tree.IDsToNodeIndexes[parentID] = newIndex;
  > |                        tree.nodeIndexesToIDs[newIndex] = parentID;
    |                    }
    |                } else { // Some vacant spot.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(988)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                    treeIndex = tree.stack[tree.stack.length - 1];
    |                    tree.stack.length--;
  > |                    tree.nodes[treeIndex] = _value;
    |                }
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(994)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |
    |                // Add label.
  > |                tree.IDsToNodeIndexes[_ID] = treeIndex;
    |                tree.nodeIndexesToIDs[treeIndex] = _ID;
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(998)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                // Add label.
    |                tree.IDsToNodeIndexes[_ID] = treeIndex;
  > |                tree.nodeIndexesToIDs[treeIndex] = _ID;
    |
    |                updateParents(self, _key, treeIndex, true, _value);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(999)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                // Remember value and set to 0.
    |                uint value = tree.nodes[treeIndex];
  > |                tree.nodes[treeIndex] = 0;
    |
    |                // Push to stack.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1008)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |
    |                // Push to stack.
  > |                tree.stack.push(treeIndex);
    |
    |                // Clear label.
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1011)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |
    |                // Clear label.
  > |                delete tree.IDsToNodeIndexes[_ID];
    |                delete tree.nodeIndexesToIDs[treeIndex];
    |
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1014)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                // Clear label.
    |                delete tree.IDsToNodeIndexes[_ID];
  > |                delete tree.nodeIndexesToIDs[treeIndex];
    |
    |                updateParents(self, _key, treeIndex, false, value);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1015)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |                bool plusOrMinus = tree.nodes[treeIndex] <= _value;
    |                uint plusOrMinusValue = plusOrMinus ? _value - tree.nodes[treeIndex] : tree.nodes[treeIndex] - _value;
  > |                tree.nodes[treeIndex] = _value;
    |
    |                updateParents(self, _key, treeIndex, plusOrMinus, plusOrMinusValue);
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1022)

[31mViolation[0m for UnrestrictedWrite in contract 'SortitionSumTreeFactory':
    |        while (parentIndex != 0) {
    |            parentIndex = (parentIndex - 1) / tree.K;
  > |            tree.nodes[parentIndex] = _plusOrMinus ? tree.nodes[parentIndex] + _value : tree.nodes[parentIndex] - _value;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x395df49c20e34a7ea995cbf546e54f66172992ea.sol(1131)


