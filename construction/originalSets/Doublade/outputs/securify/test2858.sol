Processing contract: /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol:CustodianUpgradeable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol:ERC20Impl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol:ERC20ImplUpgradeable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol:ERC20Proxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol:ERC20Store
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol:LockRequestable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CustodianUpgradeable':
    |  * @author  Gemini Trust Company, LLC
    |  */
  > |contract CustodianUpgradeable is LockRequestable {
    |
    |    // TYPES
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |
    |    /// @dev  The map of lock ids to pending custodian changes.
  > |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |      * @param  _lockId  The identifier of a pending change request.
    |      */
  > |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
    |        custodian = getCustodianChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |    // MEMBERS
    |    /// @notice  the count of all invocations of `generateLockId`.
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |      * @return a 32-byte unique identifier.
    |      */
  > |    function generateLockId() internal returns (bytes32 lockId) {
    |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |    // MEMBERS
    |    /// @dev  The address of the account or contract that acts as the custodian.
  > |    address public custodian;
    |
    |    /// @dev  The map of lock ids to pending custodian changes.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |      * @return  lockId  A unique identifier for this request.
    |      */
  > |    function requestCustodianChange(address _proposedCustodian) public returns (bytes32 lockId) {
    |        require(_proposedCustodian != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getCustodianChangeReq(bytes32 _lockId) private view returns (address _proposedNew) {
    |        CustodianChangeRequest storage changeRequest = custodianChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'CustodianUpgradeable':
    |      */
    |    function generateLockId() internal returns (bytes32 lockId) {
  > |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'CustodianUpgradeable':
    |        lockId = generateLockId();
    |
  > |        custodianChangeReqs[lockId] = CustodianChangeRequest({
    |            proposedNew: _proposedCustodian
    |        });
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodianUpgradeable':
    |      */
    |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
  > |        custodian = getCustodianChangeReq(_lockId);
    |
    |        delete custodianChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodianUpgradeable':
    |        custodian = getCustodianChangeReq(_lockId);
    |
  > |        delete custodianChangeReqs[_lockId];
    |
    |        emit CustodianChangeConfirmed(_lockId, custodian);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(119)

[33mWarning[0m for LockedEther in contract 'ERC20Impl':
    |  * @author  Gemini Trust Company, LLC
    |  */
  > |contract ERC20Impl is CustodianUpgradeable {
    |
    |    // TYPES
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(456)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    /// @dev  The map of lock ids to pending custodian changes.
  > |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @param  _lockId  The identifier of a pending change request.
    |      */
  > |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
    |        custodian = getCustodianChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * and thus does not need to re-sign the `sweepMsg` to enact the sweep.
    |      */
  > |    mapping (address => bool) public sweptSet;
    |
    |    /// @dev  The map of lock ids to pending token increases.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(491)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    /// @dev  The map of lock ids to pending token increases.
  > |    mapping (bytes32 => PendingPrint) public pendingPrintMap;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(494)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @param  _sender  The address initiating the approval in proxy.
    |      */
  > |    function approveWithSender(
    |        address _sender,
    |        address _spender,
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(535)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @param  _sender  The address initiating the approval.
    |      */
  > |    function increaseApprovalWithSender(
    |        address _sender,
    |        address _spender,
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(560)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @param  _sender  The address initiating the approval.
    |      */
  > |    function decreaseApprovalWithSender(
    |        address _sender,
    |        address _spender,
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(590)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @return  lockId  A unique identifier for this request.
    |      */
  > |    function requestPrint(address _receiver, uint256 _value) public returns (bytes32 lockId) {
    |        require(_receiver != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(624)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @param  _lockId  The identifier of a pending print request.
    |      */
  > |    function confirmPrint(bytes32 _lockId) public onlyCustodian {
    |        PendingPrint storage print = pendingPrintMap[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(647)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @return  success  If transfers succeeded.
    |      */
  > |    function batchTransfer(address[] _tos, uint256[] _values) public returns (bool success) {
    |        require(_tos.length == _values.length);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(707)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @param  _to  The destination for swept balances.
    |      */
  > |    function enableSweep(uint8[] _vs, bytes32[] _rs, bytes32[] _ss, address _to) public onlySweeper {
    |        require(_to != address(0));
    |        require((_vs.length == _rs.length) && (_vs.length == _ss.length));
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(749)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @param  _sender  The address initiating the transfer in proxy.
    |      */
  > |    function transferFromWithSender(
    |        address _sender,
    |        address _from,
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(830)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @param  _sender  The address initiating the transfer in proxy.
    |      */
  > |    function transferWithSender(
    |        address _sender,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(868)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    /// @notice  Core logic of the ERC20 `balanceOf` function.
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return erc20Store.balances(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(897)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    /// @notice  Core logic of the ERC20 `allowance` function.
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return erc20Store.allowed(_owner, _spender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(902)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |    // MEMBERS
    |    /// @notice  the count of all invocations of `generateLockId`.
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @return a 32-byte unique identifier.
    |      */
  > |    function generateLockId() internal returns (bytes32 lockId) {
    |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |    // MEMBERS
    |    /// @dev  The address of the account or contract that acts as the custodian.
  > |    address public custodian;
    |
    |    /// @dev  The map of lock ids to pending custodian changes.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @return  lockId  A unique identifier for this request.
    |      */
  > |    function requestCustodianChange(address _proposedCustodian) public returns (bytes32 lockId) {
    |        require(_proposedCustodian != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getCustodianChangeReq(bytes32 _lockId) private view returns (address _proposedNew) {
    |        CustodianChangeRequest storage changeRequest = custodianChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |    // MEMBERS
    |    /// @dev  The reference to the proxy.
  > |    ERC20Proxy public erc20Proxy;
    |
    |    /// @dev  The reference to the store.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(467)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    /// @dev  The reference to the store.
  > |    ERC20Store public erc20Store;
    |
    |    /// @dev  The sole authorized caller of delegated transfer control ('sweeping').
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(470)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    /// @dev  The sole authorized caller of delegated transfer control ('sweeping').
  > |    address public sweeper;
    |
    |    /** @dev  The static message to be signed by an external account that
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(473)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * potentially be replayed to re-enable sweeping ability.
    |      */
  > |    bytes32 public sweepMsg;
    |
    |    /** @dev  The mapping that stores whether the address in question has
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(484)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |      * @return  success  true if the burn succeeded.
    |      */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        uint256 balanceOfSender = erc20Store.balances(msg.sender);
    |        require(_value <= balanceOfSender);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(677)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |    // METHODS (ERC20 sub interface impl.)
    |    /// @notice  Core logic of the ERC20 `totalSupply` function.
  > |    function totalSupply() public view returns (uint256) {
    |        return erc20Store.totalSupply();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(892)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        erc20Store.setAllowance(_sender, _spender, _value);
    |        erc20Proxy.emitApproval(_sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(545)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_spender != address(0)); // disallow unspendable approvals
    |        erc20Store.setAllowance(_sender, _spender, _value);
  > |        erc20Proxy.emitApproval(_sender, _spender, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(546)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        uint256 currentAllowance = erc20Store.allowed(_sender, _spender);
    |        uint256 newAllowance = currentAllowance + _addedValue;
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(570)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(newAllowance >= currentAllowance);
    |
  > |        erc20Store.setAllowance(_sender, _spender, newAllowance);
    |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(575)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        erc20Store.setAllowance(_sender, _spender, newAllowance);
  > |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(576)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        uint256 currentAllowance = erc20Store.allowed(_sender, _spender);
    |        uint256 newAllowance = currentAllowance - _subtractedValue;
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(600)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(newAllowance <= currentAllowance);
    |
  > |        erc20Store.setAllowance(_sender, _spender, newAllowance);
    |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(605)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        erc20Store.setAllowance(_sender, _spender, newAllowance);
  > |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(606)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        delete pendingPrintMap[_lockId];
    |
  > |        uint256 supply = erc20Store.totalSupply();
    |        uint256 newSupply = supply + value;
    |        if (newSupply >= supply) {
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(658)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        uint256 newSupply = supply + value;
    |        if (newSupply >= supply) {
  > |          erc20Store.setTotalSupply(newSupply);
    |          erc20Store.addBalance(receiver, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(661)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        if (newSupply >= supply) {
    |          erc20Store.setTotalSupply(newSupply);
  > |          erc20Store.addBalance(receiver, value);
    |
    |          emit PrintingConfirmed(_lockId, receiver, value);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(662)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |          emit PrintingConfirmed(_lockId, receiver, value);
  > |          erc20Proxy.emitTransfer(address(0), receiver, value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(665)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |      */
    |    function burn(uint256 _value) public returns (bool success) {
  > |        uint256 balanceOfSender = erc20Store.balances(msg.sender);
    |        require(_value <= balanceOfSender);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(678)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_value <= balanceOfSender);
    |
  > |        erc20Store.setBalance(msg.sender, balanceOfSender - _value);
    |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(681)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(msg.sender, balanceOfSender - _value);
  > |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
    |        erc20Proxy.emitTransfer(msg.sender, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(682)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
  > |        erc20Proxy.emitTransfer(msg.sender, address(0), _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(684)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        uint256 numTransfers = _tos.length;
  > |        uint256 senderBalance = erc20Store.balances(msg.sender);
    |
    |        for (uint256 i = 0; i < numTransfers; i++) {
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(711)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |          if (msg.sender != to) {
    |            senderBalance -= v;
  > |            erc20Store.addBalance(to, v);
    |          }
    |          erc20Proxy.emitTransfer(msg.sender, to, v);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(721)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |            erc20Store.addBalance(to, v);
    |          }
  > |          erc20Proxy.emitTransfer(msg.sender, to, v);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(723)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        }
    |
  > |        erc20Store.setBalance(msg.sender, senderBalance);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(726)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        for (uint256 i=0; i<numSignatures; ++i) {
  > |          address from = ecrecover(sweepMsg, _vs[i], _rs[i], _ss[i]);
    |
    |          // ecrecover returns 0 on malformed input
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(757)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |            sweptSet[from] = true;
    |
  > |            uint256 fromBalance = erc20Store.balances(from);
    |
    |            if (fromBalance > 0) {
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(763)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |              sweptBalance += fromBalance;
    |
  > |              erc20Store.setBalance(from, 0);
    |
    |              erc20Proxy.emitTransfer(from, _to, fromBalance);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(768)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |              erc20Store.setBalance(from, 0);
    |
  > |              erc20Proxy.emitTransfer(from, _to, fromBalance);
    |            }
    |          }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(770)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        if (sweptBalance > 0) {
  > |          erc20Store.addBalance(_to, sweptBalance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(776)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |            if (sweptSet[from]) {
  > |                uint256 fromBalance = erc20Store.balances(from);
    |
    |                if (fromBalance > 0) {
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(803)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |                    sweptBalance += fromBalance;
    |
  > |                    erc20Store.setBalance(from, 0);
    |
    |                    erc20Proxy.emitTransfer(from, _to, fromBalance);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(808)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |                    erc20Store.setBalance(from, 0);
    |
  > |                    erc20Proxy.emitTransfer(from, _to, fromBalance);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(810)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        if (sweptBalance > 0) {
  > |            erc20Store.addBalance(_to, sweptBalance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(816)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_to != address(0)); // ensure burn is the cannonical transfer to 0x0
    |
  > |        uint256 balanceOfFrom = erc20Store.balances(_from);
    |        require(_value <= balanceOfFrom);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(842)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_value <= balanceOfFrom);
    |
  > |        uint256 senderAllowance = erc20Store.allowed(_from, _sender);
    |        require(_value <= senderAllowance);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(845)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_value <= senderAllowance);
    |
  > |        erc20Store.setBalance(_from, balanceOfFrom - _value);
    |        erc20Store.addBalance(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(848)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(_from, balanceOfFrom - _value);
  > |        erc20Store.addBalance(_to, _value);
    |
    |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(849)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        erc20Store.addBalance(_to, _value);
    |
  > |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
    |
    |        erc20Proxy.emitTransfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(851)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
    |
  > |        erc20Proxy.emitTransfer(_from, _to, _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(853)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_to != address(0)); // ensure burn is the cannonical transfer to 0x0
    |
  > |        uint256 balanceOfSender = erc20Store.balances(_sender);
    |        require(_value <= balanceOfSender);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(879)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_value <= balanceOfSender);
    |
  > |        erc20Store.setBalance(_sender, balanceOfSender - _value);
    |        erc20Store.addBalance(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(882)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(_sender, balanceOfSender - _value);
  > |        erc20Store.addBalance(_to, _value);
    |
    |        erc20Proxy.emitTransfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(883)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        erc20Store.addBalance(_to, _value);
    |
  > |        erc20Proxy.emitTransfer(_sender, _to, _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(885)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    /// @notice  Core logic of the ERC20 `totalSupply` function.
    |    function totalSupply() public view returns (uint256) {
  > |        return erc20Store.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(893)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    /// @notice  Core logic of the ERC20 `balanceOf` function.
    |    function balanceOf(address _owner) public view returns (uint256 balance) {
  > |        return erc20Store.balances(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(898)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    /// @notice  Core logic of the ERC20 `allowance` function.
    |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
  > |        return erc20Store.allowed(_owner, _spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(903)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        erc20Store.setAllowance(_sender, _spender, _value);
    |        erc20Proxy.emitApproval(_sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(545)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_spender != address(0)); // disallow unspendable approvals
    |        erc20Store.setAllowance(_sender, _spender, _value);
  > |        erc20Proxy.emitApproval(_sender, _spender, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(546)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        uint256 currentAllowance = erc20Store.allowed(_sender, _spender);
    |        uint256 newAllowance = currentAllowance + _addedValue;
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(570)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(newAllowance >= currentAllowance);
    |
  > |        erc20Store.setAllowance(_sender, _spender, newAllowance);
    |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(575)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        erc20Store.setAllowance(_sender, _spender, newAllowance);
  > |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(576)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        uint256 currentAllowance = erc20Store.allowed(_sender, _spender);
    |        uint256 newAllowance = currentAllowance - _subtractedValue;
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(newAllowance <= currentAllowance);
    |
  > |        erc20Store.setAllowance(_sender, _spender, newAllowance);
    |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(605)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        erc20Store.setAllowance(_sender, _spender, newAllowance);
  > |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(606)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        delete pendingPrintMap[_lockId];
    |
  > |        uint256 supply = erc20Store.totalSupply();
    |        uint256 newSupply = supply + value;
    |        if (newSupply >= supply) {
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(658)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        uint256 newSupply = supply + value;
    |        if (newSupply >= supply) {
  > |          erc20Store.setTotalSupply(newSupply);
    |          erc20Store.addBalance(receiver, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(661)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        if (newSupply >= supply) {
    |          erc20Store.setTotalSupply(newSupply);
  > |          erc20Store.addBalance(receiver, value);
    |
    |          emit PrintingConfirmed(_lockId, receiver, value);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(662)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |          emit PrintingConfirmed(_lockId, receiver, value);
  > |          erc20Proxy.emitTransfer(address(0), receiver, value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(665)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |      */
    |    function burn(uint256 _value) public returns (bool success) {
  > |        uint256 balanceOfSender = erc20Store.balances(msg.sender);
    |        require(_value <= balanceOfSender);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(678)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_value <= balanceOfSender);
    |
  > |        erc20Store.setBalance(msg.sender, balanceOfSender - _value);
    |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(681)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(msg.sender, balanceOfSender - _value);
  > |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
    |        erc20Proxy.emitTransfer(msg.sender, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(682)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
  > |        erc20Proxy.emitTransfer(msg.sender, address(0), _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(684)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        uint256 numTransfers = _tos.length;
  > |        uint256 senderBalance = erc20Store.balances(msg.sender);
    |
    |        for (uint256 i = 0; i < numTransfers; i++) {
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(711)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |          if (msg.sender != to) {
    |            senderBalance -= v;
  > |            erc20Store.addBalance(to, v);
    |          }
    |          erc20Proxy.emitTransfer(msg.sender, to, v);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(721)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |            erc20Store.addBalance(to, v);
    |          }
  > |          erc20Proxy.emitTransfer(msg.sender, to, v);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(723)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        }
    |
  > |        erc20Store.setBalance(msg.sender, senderBalance);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(726)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        for (uint256 i=0; i<numSignatures; ++i) {
  > |          address from = ecrecover(sweepMsg, _vs[i], _rs[i], _ss[i]);
    |
    |          // ecrecover returns 0 on malformed input
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(757)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |            sweptSet[from] = true;
    |
  > |            uint256 fromBalance = erc20Store.balances(from);
    |
    |            if (fromBalance > 0) {
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(763)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |              sweptBalance += fromBalance;
    |
  > |              erc20Store.setBalance(from, 0);
    |
    |              erc20Proxy.emitTransfer(from, _to, fromBalance);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(768)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |              erc20Store.setBalance(from, 0);
    |
  > |              erc20Proxy.emitTransfer(from, _to, fromBalance);
    |            }
    |          }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(770)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        if (sweptBalance > 0) {
  > |          erc20Store.addBalance(_to, sweptBalance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(776)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |            if (sweptSet[from]) {
  > |                uint256 fromBalance = erc20Store.balances(from);
    |
    |                if (fromBalance > 0) {
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(803)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |                    sweptBalance += fromBalance;
    |
  > |                    erc20Store.setBalance(from, 0);
    |
    |                    erc20Proxy.emitTransfer(from, _to, fromBalance);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(808)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |                    erc20Store.setBalance(from, 0);
    |
  > |                    erc20Proxy.emitTransfer(from, _to, fromBalance);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(810)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        if (sweptBalance > 0) {
  > |            erc20Store.addBalance(_to, sweptBalance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(816)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_to != address(0)); // ensure burn is the cannonical transfer to 0x0
    |
  > |        uint256 balanceOfFrom = erc20Store.balances(_from);
    |        require(_value <= balanceOfFrom);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(842)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_value <= balanceOfFrom);
    |
  > |        uint256 senderAllowance = erc20Store.allowed(_from, _sender);
    |        require(_value <= senderAllowance);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(845)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_value <= senderAllowance);
    |
  > |        erc20Store.setBalance(_from, balanceOfFrom - _value);
    |        erc20Store.addBalance(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(848)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(_from, balanceOfFrom - _value);
  > |        erc20Store.addBalance(_to, _value);
    |
    |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(849)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        erc20Store.addBalance(_to, _value);
    |
  > |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
    |
    |        erc20Proxy.emitTransfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(851)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
    |
  > |        erc20Proxy.emitTransfer(_from, _to, _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(853)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_to != address(0)); // ensure burn is the cannonical transfer to 0x0
    |
  > |        uint256 balanceOfSender = erc20Store.balances(_sender);
    |        require(_value <= balanceOfSender);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(879)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_value <= balanceOfSender);
    |
  > |        erc20Store.setBalance(_sender, balanceOfSender - _value);
    |        erc20Store.addBalance(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(882)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(_sender, balanceOfSender - _value);
  > |        erc20Store.addBalance(_to, _value);
    |
    |        erc20Proxy.emitTransfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(883)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        erc20Store.addBalance(_to, _value);
    |
  > |        erc20Proxy.emitTransfer(_sender, _to, _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(885)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    /// @notice  Core logic of the ERC20 `totalSupply` function.
    |    function totalSupply() public view returns (uint256) {
  > |        return erc20Store.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(893)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    /// @notice  Core logic of the ERC20 `balanceOf` function.
    |    function balanceOf(address _owner) public view returns (uint256 balance) {
  > |        return erc20Store.balances(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(898)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    /// @notice  Core logic of the ERC20 `allowance` function.
    |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
  > |        return erc20Store.allowed(_owner, _spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(903)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |      */
    |    function generateLockId() internal returns (bytes32 lockId) {
  > |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |        lockId = generateLockId();
    |
  > |        custodianChangeReqs[lockId] = CustodianChangeRequest({
    |            proposedNew: _proposedCustodian
    |        });
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |        lockId = generateLockId();
    |
  > |        pendingPrintMap[lockId] = PendingPrint({
    |            receiver: _receiver,
    |            value: _value
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(629)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |          // ecrecover returns 0 on malformed input
    |          if (from != address(0)) {
  > |            sweptSet[from] = true;
    |
    |            uint256 fromBalance = erc20Store.balances(from);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(761)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |      */
    |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
  > |        custodian = getCustodianChangeReq(_lockId);
    |
    |        delete custodianChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |        custodian = getCustodianChangeReq(_lockId);
    |
  > |        delete custodianChangeReqs[_lockId];
    |
    |        emit CustodianChangeConfirmed(_lockId, custodian);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |        uint256 value = print.value;
    |
  > |        delete pendingPrintMap[_lockId];
    |
    |        uint256 supply = erc20Store.totalSupply();
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(656)

[33mWarning[0m for LockedEther in contract 'ERC20ImplUpgradeable':
    |  * @author Gemini Trust Company, LLC
    |  */
  > |contract ERC20ImplUpgradeable is CustodianUpgradeable  {
    |
    |    // TYPES
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |
    |    /// @dev  The map of lock ids to pending custodian changes.
  > |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |      * @param  _lockId  The identifier of a pending change request.
    |      */
  > |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
    |        custodian = getCustodianChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  > |    mapping (bytes32 => ImplChangeRequest) public implChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |      * @param  _lockId  The identifier of a pending change request.
    |      */
  > |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |    // MEMBERS
    |    /// @notice  the count of all invocations of `generateLockId`.
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |      * @return a 32-byte unique identifier.
    |      */
  > |    function generateLockId() internal returns (bytes32 lockId) {
    |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |    // MEMBERS
    |    /// @dev  The address of the account or contract that acts as the custodian.
  > |    address public custodian;
    |
    |    /// @dev  The map of lock ids to pending custodian changes.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |      * @return  lockId  A unique identifier for this request.
    |      */
  > |    function requestCustodianChange(address _proposedCustodian) public returns (bytes32 lockId) {
    |        require(_proposedCustodian != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getCustodianChangeReq(bytes32 _lockId) private view returns (address _proposedNew) {
    |        CustodianChangeRequest storage changeRequest = custodianChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |    // MEMBERS
    |    // @dev  The reference to the active token implementation.
  > |    ERC20Impl public erc20Impl;
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |      * @return  lockId  A unique identifier for this request.
    |      */
  > |    function requestImplChange(address _proposedImpl) public returns (bytes32 lockId) {
    |        require(_proposedImpl != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getImplChangeReq(bytes32 _lockId) private view returns (ERC20Impl _proposedNew) {
    |        ImplChangeRequest storage changeRequest = implChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |      */
    |    function generateLockId() internal returns (bytes32 lockId) {
  > |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |        lockId = generateLockId();
    |
  > |        custodianChangeReqs[lockId] = CustodianChangeRequest({
    |            proposedNew: _proposedCustodian
    |        });
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |        lockId = generateLockId();
    |
  > |        implChangeReqs[lockId] = ImplChangeRequest({
    |            proposedNew: _proposedImpl
    |        });
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |      */
    |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
  > |        custodian = getCustodianChangeReq(_lockId);
    |
    |        delete custodianChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |        custodian = getCustodianChangeReq(_lockId);
    |
  > |        delete custodianChangeReqs[_lockId];
    |
    |        emit CustodianChangeConfirmed(_lockId, custodian);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |      */
    |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
  > |        erc20Impl = getImplChangeReq(_lockId);
    |
    |        delete implChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  > |        delete implChangeReqs[_lockId];
    |
    |        emit ImplChangeConfirmed(_lockId, address(erc20Impl));
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(223)

[33mWarning[0m for LockedEther in contract 'ERC20Proxy':
    |  * @author  Gemini Trust Company, LLC
    |  */
  > |contract ERC20Proxy is ERC20Interface, ERC20ImplUpgradeable {
    |
    |    // MEMBERS
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(308)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    /// @dev  The map of lock ids to pending custodian changes.
  > |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @param  _lockId  The identifier of a pending change request.
    |      */
  > |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
    |        custodian = getCustodianChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  > |    mapping (bytes32 => ImplChangeRequest) public implChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @param  _lockId  The identifier of a pending change request.
    |      */
  > |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return  balance  the balance of account with address `_owner`.
    |      */
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return erc20Impl.balanceOf(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(350)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    /** @dev Internal use only.
    |      */
  > |    function emitTransfer(address _from, address _to, uint256 _value) public onlyImpl {
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(356)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return  success  true if transfer completes.
    |      */
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        return erc20Impl.transferWithSender(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(367)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return  success  true if transfer completes.
    |      */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        return erc20Impl.transferFromWithSender(msg.sender, _from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(380)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    /** @dev Internal use only.
    |      */
  > |    function emitApproval(address _owner, address _spender, uint256 _value) public onlyImpl {
    |        emit Approval(_owner, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(386)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return  success  true if approval completes.
    |      */
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        return erc20Impl.approveWithSender(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(398)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return  success  true if approval completes.
    |      */
  > |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool success) {
    |        return erc20Impl.increaseApprovalWithSender(msg.sender, _spender, _addedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(412)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return  success  true if approval completes.
    |      */
  > |    function decreaseApproval(address _spender, uint256 _subtractedValue) public returns (bool success) {
    |        return erc20Impl.decreaseApprovalWithSender(msg.sender, _spender, _subtractedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(425)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return  remaining  the remaining allowance.
    |      */
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return erc20Impl.allowance(_owner, _spender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(434)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    // MEMBERS
    |    /// @notice  the count of all invocations of `generateLockId`.
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return a 32-byte unique identifier.
    |      */
  > |    function generateLockId() internal returns (bytes32 lockId) {
    |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    // MEMBERS
    |    /// @dev  The address of the account or contract that acts as the custodian.
  > |    address public custodian;
    |
    |    /// @dev  The map of lock ids to pending custodian changes.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return  lockId  A unique identifier for this request.
    |      */
  > |    function requestCustodianChange(address _proposedCustodian) public returns (bytes32 lockId) {
    |        require(_proposedCustodian != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getCustodianChangeReq(bytes32 _lockId) private view returns (address _proposedNew) {
    |        CustodianChangeRequest storage changeRequest = custodianChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    // MEMBERS
    |    // @dev  The reference to the active token implementation.
  > |    ERC20Impl public erc20Impl;
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return  lockId  A unique identifier for this request.
    |      */
  > |    function requestImplChange(address _proposedImpl) public returns (bytes32 lockId) {
    |        require(_proposedImpl != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getImplChangeReq(bytes32 _lockId) private view returns (ERC20Impl _proposedNew) {
    |        ImplChangeRequest storage changeRequest = implChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    // MEMBERS
    |    /// @notice  Returns the name of the token.
  > |    string public name;
    |
    |    /// @notice  Returns the symbol of the token.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    /// @notice  Returns the symbol of the token.
  > |    string public symbol;
    |
    |    /// @notice  Returns the number of decimals the token uses.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    /// @notice  Returns the number of decimals the token uses.
  > |    uint8 public decimals;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |      * @return  the total token supply.
    |      */
  > |    function totalSupply() public view returns (uint256) {
    |        return erc20Impl.totalSupply();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(341)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |      */
    |    function totalSupply() public view returns (uint256) {
  > |        return erc20Impl.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(342)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |      */
    |    function balanceOf(address _owner) public view returns (uint256 balance) {
  > |        return erc20Impl.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(351)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |      */
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.transferWithSender(msg.sender, _to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(368)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |      */
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.transferFromWithSender(msg.sender, _from, _to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(381)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |      */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.approveWithSender(msg.sender, _spender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(399)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |      */
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool success) {
  > |        return erc20Impl.increaseApprovalWithSender(msg.sender, _spender, _addedValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(413)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |      */
    |    function decreaseApproval(address _spender, uint256 _subtractedValue) public returns (bool success) {
  > |        return erc20Impl.decreaseApprovalWithSender(msg.sender, _spender, _subtractedValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(426)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |      */
    |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
  > |        return erc20Impl.allowance(_owner, _spender);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(435)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |      */
    |    function totalSupply() public view returns (uint256) {
  > |        return erc20Impl.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(342)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |      */
    |    function balanceOf(address _owner) public view returns (uint256 balance) {
  > |        return erc20Impl.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(351)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |      */
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.transferWithSender(msg.sender, _to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(368)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |      */
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.transferFromWithSender(msg.sender, _from, _to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(381)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |      */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.approveWithSender(msg.sender, _spender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(399)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |      */
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool success) {
  > |        return erc20Impl.increaseApprovalWithSender(msg.sender, _spender, _addedValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(413)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |      */
    |    function decreaseApproval(address _spender, uint256 _subtractedValue) public returns (bool success) {
  > |        return erc20Impl.decreaseApprovalWithSender(msg.sender, _spender, _subtractedValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(426)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |      */
    |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
  > |        return erc20Impl.allowance(_owner, _spender);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(435)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |      */
    |    function generateLockId() internal returns (bytes32 lockId) {
  > |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |        lockId = generateLockId();
    |
  > |        custodianChangeReqs[lockId] = CustodianChangeRequest({
    |            proposedNew: _proposedCustodian
    |        });
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |        lockId = generateLockId();
    |
  > |        implChangeReqs[lockId] = ImplChangeRequest({
    |            proposedNew: _proposedImpl
    |        });
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |      */
    |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
  > |        custodian = getCustodianChangeReq(_lockId);
    |
    |        delete custodianChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |        custodian = getCustodianChangeReq(_lockId);
    |
  > |        delete custodianChangeReqs[_lockId];
    |
    |        emit CustodianChangeConfirmed(_lockId, custodian);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |      */
    |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
  > |        erc20Impl = getImplChangeReq(_lockId);
    |
    |        delete implChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  > |        delete implChangeReqs[_lockId];
    |
    |        emit ImplChangeConfirmed(_lockId, address(erc20Impl));
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(223)

[33mWarning[0m for LockedEther in contract 'ERC20Store':
    |  * @author  Gemini Trust Company, LLC
    |  */
  > |contract ERC20Store is ERC20ImplUpgradeable {
    |
    |    // MEMBERS
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(927)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    /// @dev  The map of lock ids to pending custodian changes.
  > |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |      * @param  _lockId  The identifier of a pending change request.
    |      */
  > |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
    |        custodian = getCustodianChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  > |    mapping (bytes32 => ImplChangeRequest) public implChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |      * @param  _lockId  The identifier of a pending change request.
    |      */
  > |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    /// @dev  The mapping of balances.
  > |    mapping (address => uint256) public balances;
    |
    |    /// @dev  The mapping of allowances.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(934)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    /// @dev  The mapping of allowances.
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(937)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |      * @param _newTotalSupply the value to set as the new total supply
    |      */
  > |    function setTotalSupply(
    |        uint256 _newTotalSupply
    |    )
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(956)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |      * @param  _value  The limit of what can be spent.
    |      */
  > |    function setAllowance(
    |        address _owner,
    |        address _spender,
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(976)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |      * @param  _newBalance  The balance to set.
    |      */
  > |    function setBalance(
    |        address _owner,
    |        uint256 _newBalance
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(996)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |      * @param  _balanceIncrease  The balance to add.
    |      */
  > |    function addBalance(
    |        address _owner,
    |        uint256 _balanceIncrease
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(1016)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |    // MEMBERS
    |    /// @notice  the count of all invocations of `generateLockId`.
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |      * @return a 32-byte unique identifier.
    |      */
  > |    function generateLockId() internal returns (bytes32 lockId) {
    |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |    // MEMBERS
    |    /// @dev  The address of the account or contract that acts as the custodian.
  > |    address public custodian;
    |
    |    /// @dev  The map of lock ids to pending custodian changes.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |      * @return  lockId  A unique identifier for this request.
    |      */
  > |    function requestCustodianChange(address _proposedCustodian) public returns (bytes32 lockId) {
    |        require(_proposedCustodian != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getCustodianChangeReq(bytes32 _lockId) private view returns (address _proposedNew) {
    |        CustodianChangeRequest storage changeRequest = custodianChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |    // MEMBERS
    |    // @dev  The reference to the active token implementation.
  > |    ERC20Impl public erc20Impl;
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |      * @return  lockId  A unique identifier for this request.
    |      */
  > |    function requestImplChange(address _proposedImpl) public returns (bytes32 lockId) {
    |        require(_proposedImpl != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getImplChangeReq(bytes32 _lockId) private view returns (ERC20Impl _proposedNew) {
    |        ImplChangeRequest storage changeRequest = implChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |    // MEMBERS
    |    /// @dev  The total token supply.
  > |    uint256 public totalSupply;
    |
    |    /// @dev  The mapping of balances.
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(931)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Store':
    |      */
    |    function generateLockId() internal returns (bytes32 lockId) {
  > |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        lockId = generateLockId();
    |
  > |        custodianChangeReqs[lockId] = CustodianChangeRequest({
    |            proposedNew: _proposedCustodian
    |        });
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        lockId = generateLockId();
    |
  > |        implChangeReqs[lockId] = ImplChangeRequest({
    |            proposedNew: _proposedImpl
    |        });
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |      */
    |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
  > |        custodian = getCustodianChangeReq(_lockId);
    |
    |        delete custodianChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        custodian = getCustodianChangeReq(_lockId);
    |
  > |        delete custodianChangeReqs[_lockId];
    |
    |        emit CustodianChangeConfirmed(_lockId, custodian);
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |      */
    |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
  > |        erc20Impl = getImplChangeReq(_lockId);
    |
    |        delete implChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  > |        delete implChangeReqs[_lockId];
    |
    |        emit ImplChangeConfirmed(_lockId, address(erc20Impl));
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        onlyImpl
    |    {
  > |        totalSupply = _newTotalSupply;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(962)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        onlyImpl
    |    {
  > |        allowed[_owner][_spender] = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(984)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        onlyImpl
    |    {
  > |        balances[_owner] = _newBalance;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(1003)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        onlyImpl
    |    {
  > |        balances[_owner] = balances[_owner] + _balanceIncrease;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(1023)

[33mWarning[0m for LockedEther in contract 'LockRequestable':
    |  * @author  Gemini Trust Company, LLC
    |  */
  > |contract LockRequestable {
    |
    |    // MEMBERS
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'LockRequestable':
    |    // MEMBERS
    |    /// @notice  the count of all invocations of `generateLockId`.
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xbbb639e89df2cb661c741132bec5a29afc611ed8.sol(18)


