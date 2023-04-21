Processing contract: /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol:Escapable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol:ILiquidPledgingPlugin
Processing contract: /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol:LPPCappedMilestones
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol:LPVault
Processing contract: /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol:LiquidPledging
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol:LiquidPledgingBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for LockedEther in contract 'Escapable':
    |///  held in the contract to an `escapeHatchDestination` as long as they were
    |///  not blacklisted
  > |contract Escapable is Owned {
    |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(230)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    /// @return False if `_token` is in the blacklist and can't be taken out of
    |    ///  the contract via the `escapeHatch()`
  > |    function isTokenEscapable(address _token) constant public returns (bool) {
    |        return !escapeBlacklist[_token];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(270)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    /// security issue is uncovered or something unexpected happened
    |    /// @param _token to transfer, use 0x0 for ether
  > |    function escapeHatch(address _token) public onlyEscapeHatchCallerOrOwner {   
    |        require(escapeBlacklist[_token]==false);
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(277)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    ///  the `escapeHatchDestination`; it would be ideal that `escapeHatchCaller`
    |    ///  cannot move funds out of `escapeHatchDestination`
  > |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
    |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(301)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |///  not blacklisted
    |contract Escapable is Owned {
  > |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |contract Escapable is Owned {
    |    address public escapeHatchCaller;
  > |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(232)

[31mViolation[0m for TODAmount in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(291)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(302)

[33mWarning[0m for DAOConstantGas in contract 'LPPCappedMilestones':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for LockedEther in contract 'LPPCappedMilestones':
    |
    |
  > |contract LPPCappedMilestones is Escapable {
    |    uint constant TO_OWNER = 256;
    |    uint constant TO_INTENDEDPROJECT = 511;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1725)

[31mViolation[0m for TODAmount in contract 'LPPCappedMilestones':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for TODReceiver in contract 'LPPCappedMilestones':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(291)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(292)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |    {
    |        require(msg.sender == address(liquidPledging));
  > |        var (, , , fromIntendedProject, , ,) = liquidPledging.getPledge(pledgeFrom);
    |        var (, toOwner, , toIntendedProject, , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
    |        Milestone storage m;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1776)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |        require(msg.sender == address(liquidPledging));
    |        var (, , , fromIntendedProject, , ,) = liquidPledging.getPledge(pledgeFrom);
  > |        var (, toOwner, , toIntendedProject, , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
    |        Milestone storage m;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1777)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |        require(msg.sender == address(liquidPledging));
    |
  > |        var (, fromOwner, , , , ,) = liquidPledging.getPledge(pledgeFrom);
    |        var (, toOwner, , , , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1817)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |
    |        var (, fromOwner, , , , ,) = liquidPledging.getPledge(pledgeFrom);
  > |        var (, toOwner, , , , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
    |
    |        if (context == TO_OWNER) {
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1818)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |                if (returnFunds > 0) {
    |                    m.received -= returnFunds;
  > |                    liquidPledging.cancelPledge(pledgeTo, returnFunds);
    |                }
    |            // if the pledge has been paid, then the vault should have transferred the
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1841)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |    ) public
    |    {
  > |        uint64 idProject = liquidPledging.addProject(
    |            name,
    |            url,
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1865)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |
    |    function acceptMilestone(uint64 idProject) public {
  > |        bool isCanceled = liquidPledging.isProjectCanceled(idProject);
    |        require(!isCanceled);
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1886)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |        require(!m.accepted);
    |
  > |        liquidPledging.cancelProject(idProject);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1902)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |        require(m.accepted);
    |
  > |        liquidPledging.withdraw(idPledge, amount);
    |        collect(idProject);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1912)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |        for (uint i = 0; i < pledgesAmounts.length; i++ ) {
    |            uint64 idPledge = uint64(pledgesAmounts[i] & (D64-1));
  > |            var (, idProject, , , , ,) = liquidPledging.getPledge(idPledge);
    |
    |            mIds[i] = idProject;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1924)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |        }
    |
  > |        liquidPledging.mWithdraw(pledgesAmounts);
    |
    |        for (i = 0; i < mIds.length; i++ ) {
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1932)

[33mWarning[0m for UnhandledException in contract 'LPPCappedMilestones':
    |            assert(this.balance >= amount);
    |            m.canCollect = 0;
  > |            m.recipient.transfer(amount);
    |            PaymentCollected(idProject);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1948)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |    {
    |        require(msg.sender == address(liquidPledging));
  > |        var (, , , fromIntendedProject, , ,) = liquidPledging.getPledge(pledgeFrom);
    |        var (, toOwner, , toIntendedProject, , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
    |        Milestone storage m;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1776)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |        require(msg.sender == address(liquidPledging));
    |        var (, , , fromIntendedProject, , ,) = liquidPledging.getPledge(pledgeFrom);
  > |        var (, toOwner, , toIntendedProject, , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
    |        Milestone storage m;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1777)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |        require(msg.sender == address(liquidPledging));
    |
  > |        var (, fromOwner, , , , ,) = liquidPledging.getPledge(pledgeFrom);
    |        var (, toOwner, , , , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1817)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |
    |        var (, fromOwner, , , , ,) = liquidPledging.getPledge(pledgeFrom);
  > |        var (, toOwner, , , , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
    |
    |        if (context == TO_OWNER) {
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1818)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |                if (returnFunds > 0) {
    |                    m.received -= returnFunds;
  > |                    liquidPledging.cancelPledge(pledgeTo, returnFunds);
    |                }
    |            // if the pledge has been paid, then the vault should have transferred the
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1841)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |    ) public
    |    {
  > |        uint64 idProject = liquidPledging.addProject(
    |            name,
    |            url,
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1865)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |
    |    function acceptMilestone(uint64 idProject) public {
  > |        bool isCanceled = liquidPledging.isProjectCanceled(idProject);
    |        require(!isCanceled);
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1886)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |        require(!m.accepted);
    |
  > |        liquidPledging.cancelProject(idProject);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1902)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |        require(m.accepted);
    |
  > |        liquidPledging.withdraw(idPledge, amount);
    |        collect(idProject);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1912)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |        for (uint i = 0; i < pledgesAmounts.length; i++ ) {
    |            uint64 idPledge = uint64(pledgesAmounts[i] & (D64-1));
  > |            var (, idProject, , , , ,) = liquidPledging.getPledge(idPledge);
    |
    |            mIds[i] = idProject;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1924)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |        }
    |
  > |        liquidPledging.mWithdraw(pledgesAmounts);
    |
    |        for (i = 0; i < mIds.length; i++ ) {
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1932)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCappedMilestones':
    |            assert(this.balance >= amount);
    |            m.canCollect = 0;
  > |            m.recipient.transfer(amount);
    |            PaymentCollected(idProject);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1948)

[31mViolation[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |        );
    |
  > |        milestones[idProject] = Milestone(
    |            _maxAmount,
    |            0,
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1874)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |                uint returnFunds = 0;
    |
  > |                m.received += amount;
    |                // milestone is no longer accepting new funds
    |                if (m.accepted) {
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1830)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |                // send any exceeding funds back
    |                if (returnFunds > 0) {
  > |                    m.received -= returnFunds;
    |                    liquidPledging.cancelPledge(pledgeTo, returnFunds);
    |                }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1840)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |            } else if (toPledgeState == LiquidPledgingBase.PledgeState.Paid) {
    |                m = milestones[toOwner];
  > |                m.canCollect += amount;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1848)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |        require(!m.accepted);
    |
  > |        m.accepted = true;
    |        MilestoneAccepted(idProject);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1893)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCappedMilestones':
    |            // TODO should this assert be removed?
    |            assert(this.balance >= amount);
  > |            m.canCollect = 0;
    |            m.recipient.transfer(amount);
    |            PaymentCollected(idProject);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(1947)

[33mWarning[0m for DAOConstantGas in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for LockedEther in contract 'LiquidPledgingBase':
    |///  liquidPledging's most basic functions, mostly handling and searching the
    |///  data structures
  > |contract LiquidPledgingBase is Escapable {
    |
    |    // Limits inserted to prevent large loops that could prevent canceling
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(344)

[31mViolation[0m for TODAmount in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(291)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |///  liquidPledging's most basic functions, mostly handling and searching the
    |///  data structures
  > |contract LiquidPledgingBase is Escapable {
    |
    |    // Limits inserted to prevent large loops that could prevent canceling
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(giver.adminType == PledgeAdminType.Giver); // Must be a Giver
    |        require(giver.addr == msg.sender); // Current addr had to send this tx
  > |        giver.addr = newAddr;
    |        giver.name = newName;
    |        giver.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(delegate.adminType == PledgeAdminType.Delegate);
    |        require(delegate.addr == msg.sender);// Current addr had to send this tx
  > |        delegate.addr = newAddr;
    |        delegate.name = newName;
    |        delegate.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(544)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(project.adminType == PledgeAdminType.Project);
    |        require(project.addr == msg.sender);
  > |        project.addr = newAddr;
    |        project.name = newName;
    |        project.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(620)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function addValidPlugin(bytes32 contractHash) external onlyOwner {
  > |        pluginWhitelist[contractHash] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(870)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function removeValidPlugin(bytes32 contractHash) external onlyOwner {
  > |        pluginWhitelist[contractHash] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(874)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function useWhitelist(bool useWhitelist) external onlyOwner {
  > |        usePluginWhitelist = useWhitelist;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(878)

[33mWarning[0m for LockedEther in contract 'Owned':
    |///  directly transfered without requiring acceptance, and the third allows for
    |///  the ownership to be removed to allow for decentralization 
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61dc072691041d411bda8ce5b4090feb45788a8c.sol(162)


