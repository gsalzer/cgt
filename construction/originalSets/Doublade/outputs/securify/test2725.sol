Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:Escapable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:ILiquidPledgingPlugin
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:LPPCampaign
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:LPPCampaignFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:LPVault
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:LiquidPledging
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:LiquidPledgingBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:MiniMeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:MiniMeTokenFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol:TokenController
[33mWarning[0m for LockedEther in contract 'Controlled':
    |pragma solidity ^0.4.18;
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1704)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) public onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1715)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { require(msg.sender == controller); _; }
    |
  > |    address public controller;
    |
    |    function Controlled() public { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1709)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1716)

[33mWarning[0m for DAOConstantGas in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for LockedEther in contract 'Escapable':
    |///  held in the contract to an `escapeHatchDestination` as long as they were
    |///  not blacklisted
  > |contract Escapable is Owned {
    |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(230)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    /// @return False if `_token` is in the blacklist and can't be taken out of
    |    ///  the contract via the `escapeHatch()`
  > |    function isTokenEscapable(address _token) constant public returns (bool) {
    |        return !escapeBlacklist[_token];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(270)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    /// security issue is uncovered or something unexpected happened
    |    /// @param _token to transfer, use 0x0 for ether
  > |    function escapeHatch(address _token) public onlyEscapeHatchCallerOrOwner {   
    |        require(escapeBlacklist[_token]==false);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(277)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    ///  the `escapeHatchDestination`; it would be ideal that `escapeHatchCaller`
    |    ///  cannot move funds out of `escapeHatchDestination`
  > |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
    |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(301)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |///  not blacklisted
    |contract Escapable is Owned {
  > |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |contract Escapable is Owned {
    |    address public escapeHatchCaller;
  > |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(232)

[31mViolation[0m for TODAmount in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(291)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(302)

[33mWarning[0m for DAO in contract 'LPPCampaign':
    |    // it holds.
    |    function sendTransaction(address destination, uint value, bytes data) public initialized onlyOwner {
  > |      require(destination.call.value(value)(data));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2463)

[33mWarning[0m for DAOConstantGas in contract 'LPPCampaign':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for LockedEther in contract 'LPPCampaign':
    |///  If this contract is canceled, all pledges will be rolled back to the previous owner
    |///  and will reject all future pledge transfers to the pledgeAdmin represented by this contract
  > |contract LPPCampaign is Escapable, TokenController {
    |    uint constant FROM_OWNER = 0;
    |    uint constant FROM_PROPOSEDPROJECT = 255;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2329)

[31mViolation[0m for TODAmount in contract 'LPPCampaign':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(291)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(292)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |    ) {
    |        require(initPending);
  > |        idProject = liquidPledging.addProject(name, url, address(this), parentProject, 0, ILiquidPledgingPlugin(this));
    |        reviewer = _reviewer;
    |        initPending = false;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2366)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |    ) external initialized returns (uint maxAllowed) {
    |        require(msg.sender == address(liquidPledging));
  > |        var (, , , fromProposedProject , , , ) = liquidPledging.getPledge(pledgeFrom);
    |        var (, , , , , , toPledgeState ) = liquidPledging.getPledge(pledgeTo);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2404)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |        require(msg.sender == address(liquidPledging));
    |        var (, , , fromProposedProject , , , ) = liquidPledging.getPledge(pledgeFrom);
  > |        var (, , , , , , toPledgeState ) = liquidPledging.getPledge(pledgeTo);
    |
    |        // campaigns can not withdraw funds
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2405)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |    ) external initialized {
    |      require(msg.sender == address(liquidPledging));
  > |      var (, , , , , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
    |      var (, fromOwner, , , , , ) = liquidPledging.getPledge(pledgeFrom);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2428)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |      require(msg.sender == address(liquidPledging));
    |      var (, , , , , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
  > |      var (, fromOwner, , , , , ) = liquidPledging.getPledge(pledgeFrom);
    |
    |      // only issue tokens when pledge is committed to this campaign
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2429)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |      if ( (context == TO_OWNER) &&
    |              (toPledgeState == LiquidPledgingBase.PledgeState.Pledged)) {
  > |        var (, fromAddr , , , , , , ) = liquidPledging.getPledgeAdmin(fromOwner);
    |
    |        token.generateTokens(fromAddr, amount);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2434)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |        var (, fromAddr , , , , , , ) = liquidPledging.getPledgeAdmin(fromOwner);
    |
  > |        token.generateTokens(fromAddr, amount);
    |        GenerateTokens(liquidPledging, fromAddr, amount);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2436)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |        require( !isCanceled() );
    |
  > |        liquidPledging.cancelProject(idProject);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2444)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |      require( !isCanceled() );
    |
  > |      liquidPledging.transfer(idProject, idPledge, amount, idReceiver);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2450)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |
    |    function isCanceled() public constant initialized returns (bool) {
  > |      return liquidPledging.isProjectCanceled(idProject);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2454)

[33mWarning[0m for UnhandledException in contract 'LPPCampaign':
    |    // it holds.
    |    function sendTransaction(address destination, uint value, bytes data) public initialized onlyOwner {
  > |      require(destination.call.value(value)(data));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2463)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |    ) {
    |        require(initPending);
  > |        idProject = liquidPledging.addProject(name, url, address(this), parentProject, 0, ILiquidPledgingPlugin(this));
    |        reviewer = _reviewer;
    |        initPending = false;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |    ) external initialized returns (uint maxAllowed) {
    |        require(msg.sender == address(liquidPledging));
  > |        var (, , , fromProposedProject , , , ) = liquidPledging.getPledge(pledgeFrom);
    |        var (, , , , , , toPledgeState ) = liquidPledging.getPledge(pledgeTo);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2404)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |        require(msg.sender == address(liquidPledging));
    |        var (, , , fromProposedProject , , , ) = liquidPledging.getPledge(pledgeFrom);
  > |        var (, , , , , , toPledgeState ) = liquidPledging.getPledge(pledgeTo);
    |
    |        // campaigns can not withdraw funds
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2405)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |    ) external initialized {
    |      require(msg.sender == address(liquidPledging));
  > |      var (, , , , , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
    |      var (, fromOwner, , , , , ) = liquidPledging.getPledge(pledgeFrom);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2428)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |      require(msg.sender == address(liquidPledging));
    |      var (, , , , , , toPledgeState) = liquidPledging.getPledge(pledgeTo);
  > |      var (, fromOwner, , , , , ) = liquidPledging.getPledge(pledgeFrom);
    |
    |      // only issue tokens when pledge is committed to this campaign
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2429)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |      if ( (context == TO_OWNER) &&
    |              (toPledgeState == LiquidPledgingBase.PledgeState.Pledged)) {
  > |        var (, fromAddr , , , , , , ) = liquidPledging.getPledgeAdmin(fromOwner);
    |
    |        token.generateTokens(fromAddr, amount);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2434)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |        var (, fromAddr , , , , , , ) = liquidPledging.getPledgeAdmin(fromOwner);
    |
  > |        token.generateTokens(fromAddr, amount);
    |        GenerateTokens(liquidPledging, fromAddr, amount);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2436)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |        require( !isCanceled() );
    |
  > |        liquidPledging.cancelProject(idProject);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |      require( !isCanceled() );
    |
  > |      liquidPledging.transfer(idProject, idPledge, amount, idReceiver);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2450)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaign':
    |
    |    function isCanceled() public constant initialized returns (bool) {
  > |      return liquidPledging.isProjectCanceled(idProject);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2454)

[31mViolation[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |    ) {
    |        require(initPending);
  > |        idProject = liquidPledging.addProject(name, url, address(this), parentProject, 0, ILiquidPledgingPlugin(this));
    |        reviewer = _reviewer;
    |        initPending = false;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2366)

[31mViolation[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |        require(initPending);
    |        idProject = liquidPledging.addProject(name, url, address(this), parentProject, 0, ILiquidPledgingPlugin(this));
  > |        reviewer = _reviewer;
    |        initPending = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2367)

[31mViolation[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |        idProject = liquidPledging.addProject(name, url, address(this), parentProject, 0, ILiquidPledgingPlugin(this));
    |        reviewer = _reviewer;
  > |        initPending = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2368)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |
    |    function changeReviewer(address _newReviewer) public initialized onlyReviewer {
  > |        newReviewer = _newReviewer;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2387)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |    function acceptNewReviewer() public initialized {
    |        require(newReviewer == msg.sender);
  > |        reviewer = newReviewer;
    |        newReviewer = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2392)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaign':
    |        require(newReviewer == msg.sender);
    |        reviewer = newReviewer;
  > |        newReviewer = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2393)

[33mWarning[0m for DAOConstantGas in contract 'LPPCampaignFactory':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for LockedEther in contract 'LPPCampaignFactory':
    |
    |
  > |contract LPPCampaignFactory is Escapable {
    |
    |    function LPPCampaignFactory(address _escapeHatchCaller, address _escapeHatchDestination)
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2503)

[31mViolation[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |    /// @return False if `_token` is in the blacklist and can't be taken out of
    |    ///  the contract via the `escapeHatch()`
  > |    function isTokenEscapable(address _token) constant public returns (bool) {
    |        return !escapeBlacklist[_token];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(270)

[31mViolation[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |    /// security issue is uncovered or something unexpected happened
    |    /// @param _token to transfer, use 0x0 for ether
  > |    function escapeHatch(address _token) public onlyEscapeHatchCallerOrOwner {   
    |        require(escapeBlacklist[_token]==false);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(277)

[31mViolation[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |    ///  the `escapeHatchDestination`; it would be ideal that `escapeHatchCaller`
    |    ///  cannot move funds out of `escapeHatchDestination`
  > |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
    |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(301)

[31mViolation[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |    }
    |
  > |    function deploy(
    |        LiquidPledging liquidPledging,
    |        string name,
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2510)

[33mWarning[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |///  not blacklisted
    |contract Escapable is Owned {
  > |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |contract Escapable is Owned {
    |    address public escapeHatchCaller;
  > |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(232)

[33mWarning[0m for MissingInputValidation in contract 'LPPCampaignFactory':
    |
    |
  > |contract LPPCampaignFactory is Escapable {
    |
    |    function LPPCampaignFactory(address _escapeHatchCaller, address _escapeHatchDestination)
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2503)

[31mViolation[0m for TODAmount in contract 'LPPCampaignFactory':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnhandledException in contract 'LPPCampaignFactory':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnhandledException in contract 'LPPCampaignFactory':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(291)

[33mWarning[0m for UnhandledException in contract 'LPPCampaignFactory':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(292)

[33mWarning[0m for UnhandledException in contract 'LPPCampaignFactory':
    |  ) {
    |        LPPCampaign campaign = new LPPCampaign(liquidPledging, tokenName, tokenSymbol, escapeHatchCaller, escapeHatchDestination);
  > |        campaign.init(name, url, parentProject, reviewer);
    |        campaign.changeOwnership(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2522)

[33mWarning[0m for UnhandledException in contract 'LPPCampaignFactory':
    |        LPPCampaign campaign = new LPPCampaign(liquidPledging, tokenName, tokenSymbol, escapeHatchCaller, escapeHatchDestination);
    |        campaign.init(name, url, parentProject, reviewer);
  > |        campaign.changeOwnership(msg.sender);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2523)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaignFactory':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaignFactory':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaignFactory':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaignFactory':
    |  ) {
    |        LPPCampaign campaign = new LPPCampaign(liquidPledging, tokenName, tokenSymbol, escapeHatchCaller, escapeHatchDestination);
  > |        campaign.init(name, url, parentProject, reviewer);
    |        campaign.changeOwnership(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2522)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPCampaignFactory':
    |        LPPCampaign campaign = new LPPCampaign(liquidPledging, tokenName, tokenSymbol, escapeHatchCaller, escapeHatchDestination);
    |        campaign.init(name, url, parentProject, reviewer);
  > |        campaign.changeOwnership(msg.sender);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2523)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaignFactory':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaignFactory':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaignFactory':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaignFactory':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaignFactory':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaignFactory':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaignFactory':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPCampaignFactory':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(302)

[33mWarning[0m for DAOConstantGas in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for LockedEther in contract 'LiquidPledgingBase':
    |///  liquidPledging's most basic functions, mostly handling and searching the
    |///  data structures
  > |contract LiquidPledgingBase is Escapable {
    |
    |    // Limits inserted to prevent large loops that could prevent canceling
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(344)

[31mViolation[0m for TODAmount in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(291)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |///  liquidPledging's most basic functions, mostly handling and searching the
    |///  data structures
  > |contract LiquidPledgingBase is Escapable {
    |
    |    // Limits inserted to prevent large loops that could prevent canceling
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(giver.adminType == PledgeAdminType.Giver); // Must be a Giver
    |        require(giver.addr == msg.sender); // Current addr had to send this tx
  > |        giver.addr = newAddr;
    |        giver.name = newName;
    |        giver.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(delegate.adminType == PledgeAdminType.Delegate);
    |        require(delegate.addr == msg.sender);// Current addr had to send this tx
  > |        delegate.addr = newAddr;
    |        delegate.name = newName;
    |        delegate.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(544)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(project.adminType == PledgeAdminType.Project);
    |        require(project.addr == msg.sender);
  > |        project.addr = newAddr;
    |        project.name = newName;
    |        project.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(620)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function addValidPlugin(bytes32 contractHash) external onlyOwner {
  > |        pluginWhitelist[contractHash] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(870)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function removeValidPlugin(bytes32 contractHash) external onlyOwner {
  > |        pluginWhitelist[contractHash] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(874)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function useWhitelist(bool useWhitelist) external onlyOwner {
  > |        usePluginWhitelist = useWhitelist;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(878)

[33mWarning[0m for DAO in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2233)

[33mWarning[0m for DAOConstantGas in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2246)

[33mWarning[0m for LockedEther in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1786)

[31mViolation[0m for TODAmount in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2246)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2233)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2246)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1934)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1976)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2005)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2041)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2066)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2099)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2108)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2233)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2246)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2251)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1934)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1976)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2005)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2041)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2066)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2099)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2233)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2252)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1786)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |            // The standard ERC 20 transferFrom functionality
    |            if (allowed[_from][msg.sender] < _amount) return false;
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        return doTransfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1902)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1979)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2203)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2204)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2207)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(1716)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) public onlyController {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2160)

[33mWarning[0m for LockedEther in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2278)

[31mViolation[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |    /// @param _transfersEnabled If true, tokens will be able to be transferred
    |    /// @return The address of the new token contract
  > |    function createCloneToken(
    |        address _parentToken,
    |        uint _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2290)

[33mWarning[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2278)

[33mWarning[0m for UnhandledException in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(2308)

[33mWarning[0m for LockedEther in contract 'Owned':
    |///  directly transfered without requiring acceptance, and the third allows for
    |///  the ownership to be removed to allow for decentralization 
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb22d042896cd46d073d3bf7b487522bbe1eeb5e7.sol(162)


