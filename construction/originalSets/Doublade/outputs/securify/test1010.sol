Processing contract: /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol:Escapable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol:ILiquidPledgingPlugin
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol:LPVault
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol:LiquidPledging
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol:LiquidPledgingBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol:Owned
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
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(286)

[33mWarning[0m for LockedEther in contract 'Escapable':
    |///  held in the contract to an `escapeHatchDestination` as long as they were
    |///  not blacklisted
  > |contract Escapable is Owned {
    |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(231)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    /// @return False if `_token` is in the blacklist and can't be taken out of
    |    ///  the contract via the `escapeHatch()`
  > |    function isTokenEscapable(address _token) constant public returns (bool) {
    |        return !escapeBlacklist[_token];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(271)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    /// security issue is uncovered or something unexpected happened
    |    /// @param _token to transfer, use 0x0 for ether
  > |    function escapeHatch(address _token) public onlyEscapeHatchCallerOrOwner {   
    |        require(escapeBlacklist[_token]==false);
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(278)

[31mViolation[0m for MissingInputValidation in contract 'Escapable':
    |    ///  the `escapeHatchDestination`; it would be ideal that `escapeHatchCaller`
    |    ///  cannot move funds out of `escapeHatchDestination`
  > |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
    |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |///  not blacklisted
    |contract Escapable is Owned {
  > |    address public escapeHatchCaller;
    |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(232)

[33mWarning[0m for MissingInputValidation in contract 'Escapable':
    |contract Escapable is Owned {
    |    address public escapeHatchCaller;
  > |    address public escapeHatchDestination;
    |    mapping (address=>bool) private escapeBlacklist; // Token contract addresses
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(233)

[31mViolation[0m for TODAmount in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(286)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(286)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(292)

[33mWarning[0m for UnhandledException in contract 'Escapable':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escapable':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Escapable':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(303)

[33mWarning[0m for DAOConstantGas in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(286)

[33mWarning[0m for LockedEther in contract 'LiquidPledgingBase':
    |///  liquidPledging's most basic functions, mostly handling and searching the
    |///  data structures
  > |contract LiquidPledgingBase is Escapable {
    |
    |    // Limits inserted to prevent large loops that could prevent canceling
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(345)

[31mViolation[0m for TODAmount in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(286)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(286)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(292)

[33mWarning[0m for UnhandledException in contract 'LiquidPledgingBase':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        if (_token == 0x0) {
    |            balance = this.balance;
  > |            escapeHatchDestination.transfer(balance);
    |            EscapeHatchCalled(_token, balance);
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        /// @dev Logic for tokens
    |        ERC20 token = ERC20(_token);
  > |        balance = token.balanceOf(this);
    |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LiquidPledgingBase':
    |        ERC20 token = ERC20(_token);
    |        balance = token.balanceOf(this);
  > |        require(token.transfer(escapeHatchDestination, balance));
    |        EscapeHatchCalled(_token, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |    ///  cannot move funds out of `escapeHatchDestination`
    |    function changeHatchEscapeCaller(address _newEscapeHatchCaller) public onlyEscapeHatchCallerOrOwner {
  > |        escapeHatchCaller = _newEscapeHatchCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |///  liquidPledging's most basic functions, mostly handling and searching the
    |///  data structures
  > |contract LiquidPledgingBase is Escapable {
    |
    |    // Limits inserted to prevent large loops that could prevent canceling
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(giver.adminType == PledgeAdminType.Giver); // Must be a Giver
    |        require(giver.addr == msg.sender); // Current addr had to send this tx
  > |        giver.addr = newAddr;
    |        giver.name = newName;
    |        giver.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(delegate.adminType == PledgeAdminType.Delegate);
    |        require(delegate.addr == msg.sender);// Current addr had to send this tx
  > |        delegate.addr = newAddr;
    |        delegate.name = newName;
    |        delegate.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |        require(project.adminType == PledgeAdminType.Project);
    |        require(project.addr == msg.sender);
  > |        project.addr = newAddr;
    |        project.name = newName;
    |        project.url = newUrl;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(621)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function addValidPlugin(bytes32 contractHash) external onlyOwner {
  > |        pluginWhitelist[contractHash] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(871)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function removeValidPlugin(bytes32 contractHash) external onlyOwner {
  > |        pluginWhitelist[contractHash] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(875)

[33mWarning[0m for UnrestrictedWrite in contract 'LiquidPledgingBase':
    |
    |    function useWhitelist(bool useWhitelist) external onlyOwner {
  > |        usePluginWhitelist = useWhitelist;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(879)

[33mWarning[0m for LockedEther in contract 'Owned':
    |///  directly transfered without requiring acceptance, and the third allows for
    |///  the ownership to be removed to allow for decentralization 
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    ///  new owner
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
  > |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice Can only be called by the `newOwnerCandidate`, accepts the
    |    ///  transfer of ownership
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice `owner` can step down and assign some other address to this role
    |    /// @param _newOwner The address of the new owner
  > |    function changeOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    /// @notice Decentralizes the contract, this operation cannot be undone 
    |    /// @param _dac `0xdac` has to be entered for this function to work
  > |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    /// @param _newOwnerCandidate The address being proposed as the new owner
    |    function proposeOwnership(address _newOwnerCandidate) public onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function removeOwnership(address _dac) public onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        OwnershipRemoved();     
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3f45d2d5feb6b4b000d2d3b84442eeddf54a735a.sol(163)


