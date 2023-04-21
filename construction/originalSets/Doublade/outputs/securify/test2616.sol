Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:Escapable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:ILiquidPledgingPlugin
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:LPPDacs
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:LPVault
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:LiquidPledging
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:LiquidPledgingBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:MiniMeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:MiniMeTokenFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol:TokenController
[33mWarning[0m for LockedEther in contract 'Controlled':
    |pragma solidity ^0.4.18;
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1725)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) public onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1736)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { require(msg.sender == controller); _; }
    |
  > |    address public controller;
    |
    |    function Controlled() public { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1730)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1737)

[33mWarning[0m for DAOConstantGas in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for LockedEther in contract 'Escapable':
    |///  held in the contract to an `escapeHatchDestination` as long as they were
    |///  not blacklisted
  > |contract Escapable is Owned {
    |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(231)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    /// @return False if `_token` is in the blacklist and can't be taken out of
    |    ///  the contract via the `escapeHatch()`
  > |    function isTokenEscapable(address _token) constant public returns (bool) {
    |        return !escapeBlacklist[_token];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(271)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    /// security issue is uncovered or something unexpected happened
    |    /// @param _token to transfer, use 0x0 for ether
  > |    function escapeHatch(address _token) public onlyEscapeHatchCallerOrOwner {   
    |        require(escapeBlacklist[_token]==false);
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(278)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    ///  the `escapeHatchDestination`; it would be ideal that `escapeHatchCaller`
    |    ///  cannot move funds out of `escapeHatchDestination`
  > |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
    |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |///  not blacklisted
    |contract Escapable is Owned {
  > |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(232)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |contract Escapable is Owned {
    |    address public escapeHatchCaller;
  > |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(233)

[31mViolation[0m for TODAmount in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(292)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(303)

[33mWarning[0m for DAOConstantGas in contract 'LPPDacs':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for LockedEther in contract 'LPPDacs':
    |
    |
  > |contract LPPDacs is Escapable, TokenController {
    |    uint constant FROM_FIRST_DELEGATE = 1;
    |    uint constant TO_FIRST_DELEGATE = 257;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2359)

[31mViolation[0m for TODAmount in contract 'LPPDacs':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for TODReceiver in contract 'LPPDacs':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(292)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(293)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |    {
    |        require(msg.sender == address(liquidPledging));
  > |        var (, toOwner, , toIntendedProject, , , toPledgeState ) = liquidPledging.getPledge(pledgeTo);
    |        var (, fromOwner, , , , , ) = liquidPledging.getPledge(pledgeFrom);
    |        var (toAdminType, toAddr, , , , , , ) = liquidPledging.getPledgeAdmin(toOwner);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2415)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |        require(msg.sender == address(liquidPledging));
    |        var (, toOwner, , toIntendedProject, , , toPledgeState ) = liquidPledging.getPledge(pledgeTo);
  > |        var (, fromOwner, , , , , ) = liquidPledging.getPledge(pledgeFrom);
    |        var (toAdminType, toAddr, , , , , , ) = liquidPledging.getPledgeAdmin(toOwner);
    |        Dac storage d;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2416)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |        var (, toOwner, , toIntendedProject, , , toPledgeState ) = liquidPledging.getPledge(pledgeTo);
    |        var (, fromOwner, , , , , ) = liquidPledging.getPledge(pledgeFrom);
  > |        var (toAdminType, toAddr, , , , , , ) = liquidPledging.getPledgeAdmin(toOwner);
    |        Dac storage d;
    |        uint64 idDelegate;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2417)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |                toPledgeState == LiquidPledgingBase.PledgeState.Pledged)
    |        {
  > |            (idDelegate, , ) = liquidPledging.getPledgeDelegate(pledgeFrom, 1);
    |            d = dacs[idDelegate];
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2428)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |            require(address(d.token) != 0x0);
    |
  > |            var (, fromAddr , , , , , , ) = liquidPledging.getPledgeAdmin(fromOwner);
    |
    |            d.token.generateTokens(fromAddr, amount);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2433)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |            var (, fromAddr , , , , , , ) = liquidPledging.getPledgeAdmin(fromOwner);
    |
  > |            d.token.generateTokens(fromAddr, amount);
    |            GenerateTokens(idDelegate, fromAddr, amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2435)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |        // dac, we need to burn the tokens that we're generated
    |        if ( (context == TO_FIRST_DELEGATE) &&
  > |            liquidPledging.isProjectCanceled(fromOwner)) {
    |            (idDelegate, , ) = liquidPledging.getPledgeDelegate(pledgeTo, 1);
    |            d = dacs[idDelegate];
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2442)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |        if ( (context == TO_FIRST_DELEGATE) &&
    |            liquidPledging.isProjectCanceled(fromOwner)) {
  > |            (idDelegate, , ) = liquidPledging.getPledgeDelegate(pledgeTo, 1);
    |            d = dacs[idDelegate];
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2443)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |            require(address(d.token) != 0x0);
    |
  > |            if (d.token.balanceOf(toAddr) >= amount) {
    |                d.token.destroyTokens(toAddr, amount);
    |                DestroyTokens(fromOwner, toAddr, amount);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2448)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |
    |            if (d.token.balanceOf(toAddr) >= amount) {
  > |                d.token.destroyTokens(toAddr, amount);
    |                DestroyTokens(fromOwner, toAddr, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2449)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |    ) public
    |    {
  > |        uint64 idDelegate = liquidPledging.addDelegate(
    |            name,
    |            url,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2465)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |    ) public
    |    {
  > |        uint64 idDelegate = liquidPledging.addDelegate(
    |          name,
    |          url,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2485)

[33mWarning[0m for UnhandledException in contract 'LPPDacs':
    |        require(msg.sender == d.owner);
    |
  > |        liquidPledging.transfer(
    |            idDelegate,
    |            idPledge,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2505)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |    {
    |        require(msg.sender == address(liquidPledging));
  > |        var (, toOwner, , toIntendedProject, , , toPledgeState ) = liquidPledging.getPledge(pledgeTo);
    |        var (, fromOwner, , , , , ) = liquidPledging.getPledge(pledgeFrom);
    |        var (toAdminType, toAddr, , , , , , ) = liquidPledging.getPledgeAdmin(toOwner);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2415)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |        require(msg.sender == address(liquidPledging));
    |        var (, toOwner, , toIntendedProject, , , toPledgeState ) = liquidPledging.getPledge(pledgeTo);
  > |        var (, fromOwner, , , , , ) = liquidPledging.getPledge(pledgeFrom);
    |        var (toAdminType, toAddr, , , , , , ) = liquidPledging.getPledgeAdmin(toOwner);
    |        Dac storage d;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2416)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |        var (, toOwner, , toIntendedProject, , , toPledgeState ) = liquidPledging.getPledge(pledgeTo);
    |        var (, fromOwner, , , , , ) = liquidPledging.getPledge(pledgeFrom);
  > |        var (toAdminType, toAddr, , , , , , ) = liquidPledging.getPledgeAdmin(toOwner);
    |        Dac storage d;
    |        uint64 idDelegate;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |                toPledgeState == LiquidPledgingBase.PledgeState.Pledged)
    |        {
  > |            (idDelegate, , ) = liquidPledging.getPledgeDelegate(pledgeFrom, 1);
    |            d = dacs[idDelegate];
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2428)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |            require(address(d.token) != 0x0);
    |
  > |            var (, fromAddr , , , , , , ) = liquidPledging.getPledgeAdmin(fromOwner);
    |
    |            d.token.generateTokens(fromAddr, amount);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |            var (, fromAddr , , , , , , ) = liquidPledging.getPledgeAdmin(fromOwner);
    |
  > |            d.token.generateTokens(fromAddr, amount);
    |            GenerateTokens(idDelegate, fromAddr, amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2435)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |        // dac, we need to burn the tokens that we're generated
    |        if ( (context == TO_FIRST_DELEGATE) &&
  > |            liquidPledging.isProjectCanceled(fromOwner)) {
    |            (idDelegate, , ) = liquidPledging.getPledgeDelegate(pledgeTo, 1);
    |            d = dacs[idDelegate];
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2442)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |        if ( (context == TO_FIRST_DELEGATE) &&
    |            liquidPledging.isProjectCanceled(fromOwner)) {
  > |            (idDelegate, , ) = liquidPledging.getPledgeDelegate(pledgeTo, 1);
    |            d = dacs[idDelegate];
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2443)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |            require(address(d.token) != 0x0);
    |
  > |            if (d.token.balanceOf(toAddr) >= amount) {
    |                d.token.destroyTokens(toAddr, amount);
    |                DestroyTokens(fromOwner, toAddr, amount);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2448)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |
    |            if (d.token.balanceOf(toAddr) >= amount) {
  > |                d.token.destroyTokens(toAddr, amount);
    |                DestroyTokens(fromOwner, toAddr, amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2449)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |    ) public
    |    {
  > |        uint64 idDelegate = liquidPledging.addDelegate(
    |            name,
    |            url,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2465)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |    ) public
    |    {
  > |        uint64 idDelegate = liquidPledging.addDelegate(
    |          name,
    |          url,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2485)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPPDacs':
    |        require(msg.sender == d.owner);
    |
  > |        liquidPledging.transfer(
    |            idDelegate,
    |            idPledge,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2505)

[31mViolation[0m for UnrestrictedWrite in contract 'LPPDacs':
    |        MiniMeToken token = new MiniMeToken(tokenFactory, 0x0, 0, tokenName, 18, tokenSymbol, false);
    |
  > |        dacs[idDelegate] = Dac(token, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2475)

[31mViolation[0m for UnrestrictedWrite in contract 'LPPDacs':
    |        );
    |
  > |        dacs[idDelegate] = Dac(token, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2492)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPDacs':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPDacs':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPDacs':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPDacs':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPDacs':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPDacs':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPDacs':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'LPPDacs':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(303)

[33mWarning[0m for DAOConstantGas in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for LockedEther in contract 'LiquidPledgingBase':
    |///  liquidPledging's most basic functions, mostly handling and searching the
    |///  data structures
  > |contract LiquidPledgingBase is Escapable {
    |
    |    // Limits inserted to prevent large loops that could prevent canceling
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(345)

[31mViolation[0m for TODAmount in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(292)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |///  liquidPledging's most basic functions, mostly handling and searching the
    |///  data structures
  > |contract LiquidPledgingBase is Escapable {
    |
    |    // Limits inserted to prevent large loops that could prevent canceling
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(giver.adminType == PledgeAdminType.Giver); // Must be a Giver
    |        require(giver.addr == msg.sender); // Current addr had to send this tx
  > |        giver.addr = newAddr;
    |        giver.name = newName;
    |        giver.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(delegate.adminType == PledgeAdminType.Delegate);
    |        require(delegate.addr == msg.sender);// Current addr had to send this tx
  > |        delegate.addr = newAddr;
    |        delegate.name = newName;
    |        delegate.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(project.adminType == PledgeAdminType.Project);
    |        require(project.addr == msg.sender);
  > |        project.addr = newAddr;
    |        project.name = newName;
    |        project.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(621)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function addValidPlugin(bytes32 contractHash) external onlyOwner {
  > |        pluginWhitelist[contractHash] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(871)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function removeValidPlugin(bytes32 contractHash) external onlyOwner {
  > |        pluginWhitelist[contractHash] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(875)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function useWhitelist(bool useWhitelist) external onlyOwner {
  > |        usePluginWhitelist = useWhitelist;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(879)

[33mWarning[0m for DAO in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2254)

[33mWarning[0m for DAOConstantGas in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2267)

[33mWarning[0m for LockedEther in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1807)

[31mViolation[0m for TODAmount in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2267)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2254)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2267)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1955)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1997)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2026)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2062)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2087)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2120)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2129)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2254)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2267)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2272)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2273)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1955)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1997)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2026)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2062)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2087)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2129)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2267)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2273)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1807)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |            // The standard ERC 20 transferFrom functionality
    |            if (allowed[_from][msg.sender] < _amount) return false;
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        return doTransfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1923)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2000)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2224)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2225)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2228)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(1737)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) public onlyController {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2181)

[33mWarning[0m for LockedEther in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2299)

[31mViolation[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |    /// @param _transfersEnabled If true, tokens will be able to be transferred
    |    /// @return The address of the new token contract
  > |    function createCloneToken(
    |        address _parentToken,
    |        uint _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2311)

[33mWarning[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2299)

[33mWarning[0m for UnhandledException in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2329)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(2329)

[33mWarning[0m for LockedEther in contract 'Owned':
    |///  directly transfered without requiring acceptance, and the third allows for
    |///  the ownership to be removed to allow for decentralization 
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0xab0975186c6c94b8f4cb088eeac91a7589869435.sol(163)


