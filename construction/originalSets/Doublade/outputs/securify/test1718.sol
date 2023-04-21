Processing contract: /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol:ABIO_BaseICO
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol:ABIO_ICO
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol:ABIO_Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol:ABIO_preICO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'ABIO_preICO':
    |            ethBalances[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    emit FundsWithdrawn(msg.sender, amount);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(205)

[33mWarning[0m for DAOConstantGas in contract 'ABIO_preICO':
    |        }
    |        else if (fundingGoalReached && treasury == msg.sender) {
  > |            if (treasury.send(weiRaised)) {
    |                emit FundsWithdrawn(treasury, weiRaised);
    |            } else if (treasury.send(address(this).balance)){
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(213)

[33mWarning[0m for DAOConstantGas in contract 'ABIO_preICO':
    |            if (treasury.send(weiRaised)) {
    |                emit FundsWithdrawn(treasury, weiRaised);
  > |            } else if (treasury.send(address(this).balance)){
    |                emit FundsWithdrawn(treasury, address(this).balance);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(215)

[33mWarning[0m for LockedEther in contract 'ABIO_preICO':
    |         modifier afterDeadline() { if (now >= deadline) _; }
    |}
  > |contract ABIO_preICO is ABIO_BaseICO{
    |    address ICOAddress;
    |    ABIO_ICO ICO;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(149)

[31mViolation[0m for MissingInputValidation in contract 'ABIO_preICO':
    |         * @dev Marked external because it is never called from this contract.
    |         */
  > |         function changeTreasury(address _newTreasury) external onlyOwner{
    |             treasury = _newTreasury;
    |             emit ChangeTreasury(msg.sender, _newTreasury);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'ABIO_preICO':
    |         * @notice allows owner to change the minInvestment in case of extreme price jumps of ETH price.
    |         */
  > |         function changeMinInvestment(uint _newMin) external onlyOwner{
    |             emit ChangeMinInvestment(msg.sender, minInvestment, _newMin);
    |             minInvestment = _newMin;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'ABIO_preICO':
    |         * @dev Crowdsale opens once this contract gets the tokens.
    |         */
  > |         function tokenFallback(address _from, uint _value, bytes _data) external{
    |             require(_from == abioToken.owner() || _from == owner);
    |             volume = _value;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |pragma solidity ^0.4.24;
    |contract Ownable{
  > |    address public owner;
    |    event ownerTransfer(address indexed oldOwner, address indexed newOwner);
    |    event ownerGone(address indexed oldOwner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |        _;
    |    }
  > |    function changeOwner(address _newOwner) public onlyOwner{
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |}
    |contract Haltable is Ownable{
  > |    bool public paused;
    |    event ContractPaused(address by);
    |    event ContractUnpaused(address by);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |        paused = true;
    |    }
  > |    function pause() public onlyOwner {
    |        paused = true;
    |        emit ContractPaused(owner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |        emit ContractPaused(owner);
    |    }
  > |    function unpause() public onlyOwner {
    |        paused = false;
    |        emit ContractUnpaused(owner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    mapping(address => uint256) ethBalances;
    |
  > |    uint public weiRaised;//total raised in wei
    |    uint public abioSold;//amount of ABIO sold
    |    uint public volume; //total amount of ABIO selling in this preICO
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |
    |    uint public weiRaised;//total raised in wei
  > |    uint public abioSold;//amount of ABIO sold
    |    uint public volume; //total amount of ABIO selling in this preICO
    |
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    uint public weiRaised;//total raised in wei
    |    uint public abioSold;//amount of ABIO sold
  > |    uint public volume; //total amount of ABIO selling in this preICO
    |
    |    uint public startDate;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    uint public volume; //total amount of ABIO selling in this preICO
    |
  > |    uint public startDate;
    |    uint public length;
    |    uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |
    |    uint public startDate;
  > |    uint public length;
    |    uint public deadline;
    |    bool public restTokensBurned;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    uint public startDate;
    |    uint public length;
  > |    uint public deadline;
    |    bool public restTokensBurned;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    uint public length;
    |    uint public deadline;
  > |    bool public restTokensBurned;
    |
    |    uint public weiPerABIO; //how much wei one ABIO costs
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    bool public restTokensBurned;
    |
  > |    uint public weiPerABIO; //how much wei one ABIO costs
    |    uint public minInvestment;
    |    uint public fundingGoal;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |
    |    uint public weiPerABIO; //how much wei one ABIO costs
  > |    uint public minInvestment;
    |    uint public fundingGoal;
    |    bool public fundingGoalReached;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    uint public weiPerABIO; //how much wei one ABIO costs
    |    uint public minInvestment;
  > |    uint public fundingGoal;
    |    bool public fundingGoalReached;
    |    address public treasury;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    uint public minInvestment;
    |    uint public fundingGoal;
  > |    bool public fundingGoalReached;
    |    address public treasury;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    uint public fundingGoal;
    |    bool public fundingGoalReached;
  > |    address public treasury;
    |
    |    ABIO_Token public abioToken;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    address public treasury;
    |
  > |    ABIO_Token public abioToken;
    |
    |    event ICOStart(uint volume, uint weiPerABIO, uint minInvestment);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |         * @dev This can be called by anyone after deadline since it's an essential and inevitable part.
    |         */
  > |         function burnRestTokens() afterDeadline{
    |                 require(!restTokensBurned);
    |                 abioToken.burnMyBalance();
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |         }
    |
  > |         function isRunning() view returns (bool){
    |             return (now < deadline);
    |         }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |     * @dev We check if `fundingGoal` is reached again, because this MIGHT be called after it is reached, so `extGoalReached()` will never be called after.
    |     */
  > |    function supplyICOContract(address _addr) public onlyOwner{
    |        require(_addr != 0x0);
    |        ICOAddress = _addr;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    }
    |
  > |    function goalReached() internal{
    |        fundingGoalReached = true;
    |        emit SoftcapReached(treasury, fundingGoal);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |    * @dev This is, at max., called once! If this contract doesn't know ICOAddress by that time, we rely on the check in `supplyICOContract()`
    |    */
  > |    function extGoalReached() afterDeadline external{
    |        require(ICOAddress != 0x0); //ICO was supplied
    |        require(msg.sender == ICOAddress);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'ABIO_preICO':
    |     * @dev The treasury can withdraw right after `fundingGoal` is reached.
    |     */
  > |    function safeWithdrawal() afterDeadline stopOnPause{
    |        if (!fundingGoalReached && now >= finalDeadline) {
    |            uint amount = ethBalances[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(200)

[31mViolation[0m for TODAmount in contract 'ABIO_preICO':
    |        }
    |        else if (fundingGoalReached && treasury == msg.sender) {
  > |            if (treasury.send(weiRaised)) {
    |                emit FundsWithdrawn(treasury, weiRaised);
    |            } else if (treasury.send(address(this).balance)){
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(213)

[31mViolation[0m for TODAmount in contract 'ABIO_preICO':
    |            if (treasury.send(weiRaised)) {
    |                emit FundsWithdrawn(treasury, weiRaised);
  > |            } else if (treasury.send(address(this).balance)){
    |                emit FundsWithdrawn(treasury, address(this).balance);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(215)

[31mViolation[0m for TODReceiver in contract 'ABIO_preICO':
    |        }
    |        else if (fundingGoalReached && treasury == msg.sender) {
  > |            if (treasury.send(weiRaised)) {
    |                emit FundsWithdrawn(treasury, weiRaised);
    |            } else if (treasury.send(address(this).balance)){
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(213)

[31mViolation[0m for TODReceiver in contract 'ABIO_preICO':
    |            if (treasury.send(weiRaised)) {
    |                emit FundsWithdrawn(treasury, weiRaised);
  > |            } else if (treasury.send(address(this).balance)){
    |                emit FundsWithdrawn(treasury, address(this).balance);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(215)

[33mWarning[0m for TODReceiver in contract 'ABIO_preICO':
    |            ethBalances[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    emit FundsWithdrawn(msg.sender, amount);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(205)

[33mWarning[0m for UnhandledException in contract 'ABIO_preICO':
    |         */
    |         function tokenFallback(address _from, uint _value, bytes _data) external{
  > |             require(_from == abioToken.owner() || _from == owner);
    |             volume = _value;
    |             paused = false;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(124)

[33mWarning[0m for UnhandledException in contract 'ABIO_preICO':
    |         function burnRestTokens() afterDeadline{
    |                 require(!restTokensBurned);
  > |                 abioToken.burnMyBalance();
    |                 restTokensBurned = true;
    |         }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(137)

[33mWarning[0m for UnhandledException in contract 'ABIO_preICO':
    |        ICOAddress = _addr;
    |        ICO = ABIO_ICO(_addr);
  > |        if(!fundingGoalReached && weiRaised + ICO.weiRaised() >= fundingGoal){goalReached();}
    |        finalDeadline = ICO.deadline();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(173)

[33mWarning[0m for UnhandledException in contract 'ABIO_preICO':
    |        ICO = ABIO_ICO(_addr);
    |        if(!fundingGoalReached && weiRaised + ICO.weiRaised() >= fundingGoal){goalReached();}
  > |        finalDeadline = ICO.deadline();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(174)

[33mWarning[0m for UnhandledException in contract 'ABIO_preICO':
    |            ethBalances[msg.sender] = 0;
    |            if (amount > 0) {
  > |                if (msg.sender.send(amount)) {
    |                    emit FundsWithdrawn(msg.sender, amount);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(205)

[33mWarning[0m for UnhandledException in contract 'ABIO_preICO':
    |        }
    |        else if (fundingGoalReached && treasury == msg.sender) {
  > |            if (treasury.send(weiRaised)) {
    |                emit FundsWithdrawn(treasury, weiRaised);
    |            } else if (treasury.send(address(this).balance)){
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(213)

[33mWarning[0m for UnhandledException in contract 'ABIO_preICO':
    |            if (treasury.send(weiRaised)) {
    |                emit FundsWithdrawn(treasury, weiRaised);
  > |            } else if (treasury.send(address(this).balance)){
    |                emit FundsWithdrawn(treasury, address(this).balance);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABIO_preICO':
    |         */
    |         function tokenFallback(address _from, uint _value, bytes _data) external{
  > |             require(_from == abioToken.owner() || _from == owner);
    |             volume = _value;
    |             paused = false;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABIO_preICO':
    |         function burnRestTokens() afterDeadline{
    |                 require(!restTokensBurned);
  > |                 abioToken.burnMyBalance();
    |                 restTokensBurned = true;
    |         }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABIO_preICO':
    |        ICOAddress = _addr;
    |        ICO = ABIO_ICO(_addr);
  > |        if(!fundingGoalReached && weiRaised + ICO.weiRaised() >= fundingGoal){goalReached();}
    |        finalDeadline = ICO.deadline();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABIO_preICO':
    |        ICO = ABIO_ICO(_addr);
    |        if(!fundingGoalReached && weiRaised + ICO.weiRaised() >= fundingGoal){goalReached();}
  > |        finalDeadline = ICO.deadline();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(174)

[31mViolation[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |         function tokenFallback(address _from, uint _value, bytes _data) external{
    |             require(_from == abioToken.owner() || _from == owner);
  > |             volume = _value;
    |             paused = false;
    |             deadline = now + length;
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |             require(_from == abioToken.owner() || _from == owner);
    |             volume = _value;
  > |             paused = false;
    |             deadline = now + length;
    |             emit ICOStart(_value, weiPerABIO, minInvestment);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |             volume = _value;
    |             paused = false;
  > |             deadline = now + length;
    |             emit ICOStart(_value, weiPerABIO, minInvestment);
    |         }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |                 require(!restTokensBurned);
    |                 abioToken.burnMyBalance();
  > |                 restTokensBurned = true;
    |         }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |
    |    function goalReached() internal{
  > |        fundingGoalReached = true;
    |        emit SoftcapReached(treasury, fundingGoal);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |        if (!fundingGoalReached && now >= finalDeadline) {
    |            uint amount = ethBalances[msg.sender];
  > |            ethBalances[msg.sender] = 0;
    |            if (amount > 0) {
    |                if (msg.sender.send(amount)) {
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |                    emit FundsWithdrawn(msg.sender, amount);
    |                } else {
  > |                    ethBalances[msg.sender] = amount;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |    }
    |    function pause() public onlyOwner {
  > |        paused = true;
    |        emit ContractPaused(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |    }
    |    function unpause() public onlyOwner {
  > |        paused = false;
    |        emit ContractUnpaused(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |         */
    |         function changeTreasury(address _newTreasury) external onlyOwner{
  > |             treasury = _newTreasury;
    |             emit ChangeTreasury(msg.sender, _newTreasury);
    |         }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |         function changeMinInvestment(uint _newMin) external onlyOwner{
    |             emit ChangeMinInvestment(msg.sender, minInvestment, _newMin);
  > |             minInvestment = _newMin;
    |         }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |    function supplyICOContract(address _addr) public onlyOwner{
    |        require(_addr != 0x0);
  > |        ICOAddress = _addr;
    |        ICO = ABIO_ICO(_addr);
    |        if(!fundingGoalReached && weiRaised + ICO.weiRaised() >= fundingGoal){goalReached();}
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |        require(_addr != 0x0);
    |        ICOAddress = _addr;
  > |        ICO = ABIO_ICO(_addr);
    |        if(!fundingGoalReached && weiRaised + ICO.weiRaised() >= fundingGoal){goalReached();}
    |        finalDeadline = ICO.deadline();
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |        ICO = ABIO_ICO(_addr);
    |        if(!fundingGoalReached && weiRaised + ICO.weiRaised() >= fundingGoal){goalReached();}
  > |        finalDeadline = ICO.deadline();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO_preICO':
    |
    |    function goalReached() internal{
  > |        fundingGoalReached = true;
    |        emit SoftcapReached(treasury, fundingGoal);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(178)

[33mWarning[0m for LockedEther in contract 'Haltable':
    |    }
    |}
  > |contract Haltable is Ownable{
    |    bool public paused;
    |    event ContractPaused(address by);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |pragma solidity ^0.4.24;
    |contract Ownable{
  > |    address public owner;
    |    event ownerTransfer(address indexed oldOwner, address indexed newOwner);
    |    event ownerGone(address indexed oldOwner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |        _;
    |    }
  > |    function changeOwner(address _newOwner) public onlyOwner{
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |}
    |contract Haltable is Ownable{
  > |    bool public paused;
    |    event ContractPaused(address by);
    |    event ContractUnpaused(address by);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |        paused = true;
    |    }
  > |    function pause() public onlyOwner {
    |        paused = true;
    |        emit ContractPaused(owner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |        emit ContractPaused(owner);
    |    }
  > |    function unpause() public onlyOwner {
    |        paused = false;
    |        emit ContractUnpaused(owner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    }
    |    function pause() public onlyOwner {
  > |        paused = true;
    |        emit ContractPaused(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    }
    |    function unpause() public onlyOwner {
  > |        paused = false;
    |        emit ContractUnpaused(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(36)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.24;
  > |contract Ownable{
    |    address public owner;
    |    event ownerTransfer(address indexed oldOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |pragma solidity ^0.4.24;
    |contract Ownable{
  > |    address public owner;
    |    event ownerTransfer(address indexed oldOwner, address indexed newOwner);
    |    event ownerGone(address indexed oldOwner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function changeOwner(address _newOwner) public onlyOwner{
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(14)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d84769b1e287a27f282a938c8110b22714dbf78.sol(17)


