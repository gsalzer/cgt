Processing contract: /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol:Escapable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol:LPVault
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol:LiquidPledging
Processing contract: /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol:Owned
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
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(203)

[33mWarning[0m for LockedEther in contract 'Escapable':
    |///  held in the contract to an `escapeHatchDestination` as long as they were
    |///  not blacklisted
  > |contract Escapable is Owned {
    |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    /// @return False if `_token` is in the blacklist and can't be taken out of
    |    ///  the contract via the `escapeHatch()`
  > |    function isTokenEscapable(address _token) constant public returns (bool) {
    |        return !escapeBlacklist[_token];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    /// security issue is uncovered or something unexpected happened
    |    /// @param _token to transfer, use 0x0 for ether
  > |    function escapeHatch(address _token) public onlyEscapeHatchCallerOrOwner {   
    |        require(escapeBlacklist[_token]==false);
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(195)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    ///  the `escapeHatchDestination`; it would be ideal that `escapeHatchCaller`
    |    ///  cannot move funds out of `escapeHatchDestination`
  > |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
    |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |///  not blacklisted
    |contract Escapable is Owned {
  > |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |contract Escapable is Owned {
    |    address public escapeHatchCaller;
  > |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(150)

[31mViolation[0m for TODAmount in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(203)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(203)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(209)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(220)

[31mViolation[0m for DAOConstantGas in contract 'LPVault':
    |        liquidPledging.confirmPayment(uint64(p.ref), p.amount);
    |
  > |        p.dest.transfer(p.amount);  // Transfers ETH denominated in wei
    |
    |        ConfirmPayment(_idPayment, p.ref);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(377)

[33mWarning[0m for DAOConstantGas in contract 'LPVault':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(203)

[33mWarning[0m for DAOConstantGas in contract 'LPVault':
    |        if (_token == 0x0) {
    |            require(this.balance >= _amount);
  > |            escapeHatchDestination.transfer(_amount);
    |            EscapeHatchCalled(_token, _amount);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(434)

[33mWarning[0m for LockedEther in contract 'LPVault':
    |/// @dev `LPVault` is a higher level contract built off of the `Escapable`
    |///  contract that holds funds for the liquid pledging system.
  > |contract LPVault is Escapable {
    |
    |    LiquidPledging public liquidPledging; // LiquidPledging contract's address
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(269)

[31mViolation[0m for TODAmount in contract 'LPVault':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(203)

[33mWarning[0m for TODAmount in contract 'LPVault':
    |        if (_token == 0x0) {
    |            require(this.balance >= _amount);
  > |            escapeHatchDestination.transfer(_amount);
    |            EscapeHatchCalled(_token, _amount);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(434)

[33mWarning[0m for TODReceiver in contract 'LPVault':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(203)

[33mWarning[0m for TODReceiver in contract 'LPVault':
    |        if (_token == 0x0) {
    |            require(this.balance >= _amount);
  > |            escapeHatchDestination.transfer(_amount);
    |            EscapeHatchCalled(_token, _amount);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(434)

[33mWarning[0m for UnhandledException in contract 'LPVault':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(203)

[33mWarning[0m for UnhandledException in contract 'LPVault':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(209)

[33mWarning[0m for UnhandledException in contract 'LPVault':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(210)

[33mWarning[0m for UnhandledException in contract 'LPVault':
    |
    |        p.state = PaymentStatus.Paid;
  > |        liquidPledging.confirmPayment(uint64(p.ref), p.amount);
    |
    |        p.dest.transfer(p.amount);  // Transfers ETH denominated in wei
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(375)

[33mWarning[0m for UnhandledException in contract 'LPVault':
    |        liquidPledging.confirmPayment(uint64(p.ref), p.amount);
    |
  > |        p.dest.transfer(p.amount);  // Transfers ETH denominated in wei
    |
    |        ConfirmPayment(_idPayment, p.ref);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(377)

[33mWarning[0m for UnhandledException in contract 'LPVault':
    |        p.state = PaymentStatus.Canceled;
    |
  > |        liquidPledging.cancelPayment(uint64(p.ref), p.amount);
    |
    |        CancelPayment(_idPayment, p.ref);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(398)

[33mWarning[0m for UnhandledException in contract 'LPVault':
    |        if (_token == 0x0) {
    |            require(this.balance >= _amount);
  > |            escapeHatchDestination.transfer(_amount);
    |            EscapeHatchCalled(_token, _amount);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(434)

[33mWarning[0m for UnhandledException in contract 'LPVault':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        uint balance = token.balanceOf(this);
    |        require(balance >= _amount);
    |        require(token.transfer(escapeHatchDestination, _amount));
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(440)

[33mWarning[0m for UnhandledException in contract 'LPVault':
    |        uint balance = token.balanceOf(this);
    |        require(balance >= _amount);
  > |        require(token.transfer(escapeHatchDestination, _amount));
    |        EscapeFundsCalled(_token, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(442)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPVault':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPVault':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPVault':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPVault':
    |
    |        p.state = PaymentStatus.Paid;
  > |        liquidPledging.confirmPayment(uint64(p.ref), p.amount);
    |
    |        p.dest.transfer(p.amount);  // Transfers ETH denominated in wei
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(375)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPVault':
    |        liquidPledging.confirmPayment(uint64(p.ref), p.amount);
    |
  > |        p.dest.transfer(p.amount);  // Transfers ETH denominated in wei
    |
    |        ConfirmPayment(_idPayment, p.ref);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(377)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPVault':
    |        p.state = PaymentStatus.Canceled;
    |
  > |        liquidPledging.cancelPayment(uint64(p.ref), p.amount);
    |
    |        CancelPayment(_idPayment, p.ref);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(398)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPVault':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        uint balance = token.balanceOf(this);
    |        require(balance >= _amount);
    |        require(token.transfer(escapeHatchDestination, _amount));
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(440)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPVault':
    |        uint balance = token.balanceOf(this);
    |        require(balance >= _amount);
  > |        require(token.transfer(escapeHatchDestination, _amount));
    |        EscapeFundsCalled(_token, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(442)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LPVault':
    |        if (_token == 0x0) {
    |            require(this.balance >= _amount);
  > |            escapeHatchDestination.transfer(_amount);
    |            EscapeHatchCalled(_token, _amount);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(434)

[31mViolation[0m for UnrestrictedWrite in contract 'LPVault':
    |/// @dev `LPVault` is a higher level contract built off of the `Escapable`
    |///  contract that holds funds for the liquid pledging system.
  > |contract LPVault is Escapable {
    |
    |    LiquidPledging public liquidPledging; // LiquidPledging contract's address
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |/// @dev `LPVault` is a higher level contract built off of the `Escapable`
    |///  contract that holds funds for the liquid pledging system.
  > |contract LPVault is Escapable {
    |
    |    LiquidPledging public liquidPledging; // LiquidPledging contract's address
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |    function setLiquidPledging(address _newLiquidPledging) public onlyOwner {
    |        require(address(liquidPledging) == 0x0);
  > |        liquidPledging = LiquidPledging(_newLiquidPledging);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |    ///  every payment
    |    function setAutopay(bool _automatic) public onlyOwner {
  > |        autoPay = _automatic;
    |        AutoPaySet();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |        uint idPayment = payments.length;
    |        payments.length ++;
  > |        payments[idPayment].state = PaymentStatus.Pending;
    |        payments[idPayment].ref = _ref;
    |        payments[idPayment].dest = _dest;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |        payments.length ++;
    |        payments[idPayment].state = PaymentStatus.Pending;
  > |        payments[idPayment].ref = _ref;
    |        payments[idPayment].dest = _dest;
    |        payments[idPayment].amount = _amount;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |        payments[idPayment].state = PaymentStatus.Pending;
    |        payments[idPayment].ref = _ref;
  > |        payments[idPayment].dest = _dest;
    |        payments[idPayment].amount = _amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |        payments[idPayment].ref = _ref;
    |        payments[idPayment].dest = _dest;
  > |        payments[idPayment].amount = _amount;
    |
    |        AuthorizePayment(idPayment, _ref, _dest, _amount);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |        require(p.state == PaymentStatus.Pending);
    |
  > |        p.state = PaymentStatus.Paid;
    |        liquidPledging.confirmPayment(uint64(p.ref), p.amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'LPVault':
    |        require(p.state == PaymentStatus.Pending);
    |
  > |        p.state = PaymentStatus.Canceled;
    |
    |        liquidPledging.cancelPayment(uint64(p.ref), p.amount);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(396)

[33mWarning[0m for LockedEther in contract 'Owned':
    |///  directly transfered without requiring acceptance, and the third allows for
    |///  the ownership to be removed to allow for decentralization 
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91a973bee89225c6c186419b5bab1944fc5736c7.sol(80)


