Processing contract: /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol:CustodianUpgradeable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol:ERC20Impl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol:ERC20ImplUpgradeable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol:ERC20Proxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol:ERC20Store
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol:LockRequestable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CustodianUpgradeable':
    |}
    |
  > |contract CustodianUpgradeable is LockRequestable {
    |
    |    // TYPES
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |    address public custodian;
    |
  > |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |    }
    |
  > |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
    |        custodian = getCustodianChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |
    |    // MEMBERS
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |
    |    // FUNCTIONS
  > |    function generateLockId() internal returns (bytes32 lockId) {
    |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |
    |    // MEMBERS
  > |    address public custodian;
    |
    |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |    // (UPGRADE)
    |
  > |    function requestCustodianChange(address _proposedCustodian) public returns (bytes32 lockId) {
    |        require(_proposedCustodian != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'CustodianUpgradeable':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getCustodianChangeReq(bytes32 _lockId) private view returns (address _proposedNew) {
    |        CustodianChangeRequest storage changeRequest = custodianChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'CustodianUpgradeable':
    |    // FUNCTIONS
    |    function generateLockId() internal returns (bytes32 lockId) {
  > |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'CustodianUpgradeable':
    |        lockId = generateLockId();
    |
  > |        custodianChangeReqs[lockId] = CustodianChangeRequest({
    |            proposedNew: _proposedCustodian
    |        });
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodianUpgradeable':
    |
    |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
  > |        custodian = getCustodianChangeReq(_lockId);
    |
    |        delete custodianChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'CustodianUpgradeable':
    |        custodian = getCustodianChangeReq(_lockId);
    |
  > |        delete custodianChangeReqs[_lockId];
    |
    |        emit CustodianChangeConfirmed(_lockId, custodian);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(62)

[33mWarning[0m for LockedEther in contract 'ERC20Impl':
    |
    |
  > |contract ERC20Impl is CustodianUpgradeable {
    |
    |    // TYPES
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(269)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |    address public custodian;
    |
  > |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |    }
    |
  > |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
    |        custodian = getCustodianChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    
  > |    mapping (address => bool) public sweptSet;
    |
    |    /// @dev  The map of lock ids to pending token increases.
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(288)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    /// @dev  The map of lock ids to pending token increases.
  > |    mapping (bytes32 => PendingPrint) public pendingPrintMap;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(291)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    
  > |    function approveWithSender(
    |        address _sender,
    |        address _spender,
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(323)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    
  > |    function increaseApprovalWithSender(
    |        address _sender,
    |        address _spender,
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    
  > |    function decreaseApprovalWithSender(
    |        address _sender,
    |        address _spender,
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(360)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    
  > |    function requestPrint(address _receiver, uint256 _value) public returns (bytes32 lockId) {
    |        require(_receiver != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(381)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    
  > |    function confirmPrint(bytes32 _lockId) public onlyCustodian {
    |        PendingPrint storage print = pendingPrintMap[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(395)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    
  > |    function batchTransfer(address[] _tos, uint256[] _values) public returns (bool success) {
    |        require(_tos.length == _values.length);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(431)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |    }
    |
  > |    function enableSweep(uint8[] _vs, bytes32[] _rs, bytes32[] _ss, address _to) public onlySweeper {
    |        require(_to != address(0));
    |        require((_vs.length == _rs.length) && (_vs.length == _ss.length));
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(455)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |    }
    |
  > |    function transferFromWithSender(
    |        address _sender,
    |        address _from,
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(512)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |    }
    |
  > |    function transferWithSender(
    |        address _sender,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(540)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return erc20Store.balances(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(567)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Impl':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return erc20Store.allowed(_owner, _spender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(571)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    // MEMBERS
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    // FUNCTIONS
  > |    function generateLockId() internal returns (bytes32 lockId) {
    |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    // MEMBERS
  > |    address public custodian;
    |
    |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |    // (UPGRADE)
    |
  > |    function requestCustodianChange(address _proposedCustodian) public returns (bytes32 lockId) {
    |        require(_proposedCustodian != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getCustodianChangeReq(bytes32 _lockId) private view returns (address _proposedNew) {
    |        CustodianChangeRequest storage changeRequest = custodianChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    // MEMBERS
  > |    ERC20Proxy public erc20Proxy;
    |
    |    ERC20Store public erc20Store;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(278)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |    ERC20Proxy public erc20Proxy;
    |
  > |    ERC20Store public erc20Store;
    |
    |    address public sweeper;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |    ERC20Store public erc20Store;
    |
  > |    address public sweeper;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(282)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    
  > |    bytes32 public sweepMsg;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(285)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    
  > |    function burn(uint256 _value) public returns (bool success) {
    |        uint256 balanceOfSender = erc20Store.balances(msg.sender);
    |        require(_value <= balanceOfSender);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(418)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Impl':
    |
    |    // METHODS (ERC20 sub interface impl.)
  > |    function totalSupply() public view returns (uint256) {
    |        return erc20Store.totalSupply();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(563)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        erc20Store.setAllowance(_sender, _spender, _value);
    |        erc20Proxy.emitApproval(_sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(333)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_spender != address(0)); // disallow unspendable approvals
    |        erc20Store.setAllowance(_sender, _spender, _value);
  > |        erc20Proxy.emitApproval(_sender, _spender, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(334)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        uint256 currentAllowance = erc20Store.allowed(_sender, _spender);
    |        uint256 newAllowance = currentAllowance + _addedValue;
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(349)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(newAllowance >= currentAllowance);
    |
  > |        erc20Store.setAllowance(_sender, _spender, newAllowance);
    |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(354)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        erc20Store.setAllowance(_sender, _spender, newAllowance);
  > |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(355)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        uint256 currentAllowance = erc20Store.allowed(_sender, _spender);
    |        uint256 newAllowance = currentAllowance - _subtractedValue;
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(370)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(newAllowance <= currentAllowance);
    |
  > |        erc20Store.setAllowance(_sender, _spender, newAllowance);
    |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(375)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        erc20Store.setAllowance(_sender, _spender, newAllowance);
  > |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(376)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        delete pendingPrintMap[_lockId];
    |
  > |        uint256 supply = erc20Store.totalSupply();
    |        uint256 newSupply = supply + value;
    |        if (newSupply >= supply) {
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(406)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        uint256 newSupply = supply + value;
    |        if (newSupply >= supply) {
  > |          erc20Store.setTotalSupply(newSupply);
    |          erc20Store.addBalance(receiver, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(409)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        if (newSupply >= supply) {
    |          erc20Store.setTotalSupply(newSupply);
  > |          erc20Store.addBalance(receiver, value);
    |
    |          emit PrintingConfirmed(_lockId, receiver, value);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(410)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |          emit PrintingConfirmed(_lockId, receiver, value);
  > |          erc20Proxy.emitTransfer(address(0), receiver, value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(413)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    
    |    function burn(uint256 _value) public returns (bool success) {
  > |        uint256 balanceOfSender = erc20Store.balances(msg.sender);
    |        require(_value <= balanceOfSender);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(419)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_value <= balanceOfSender);
    |
  > |        erc20Store.setBalance(msg.sender, balanceOfSender - _value);
    |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(422)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(msg.sender, balanceOfSender - _value);
  > |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
    |        erc20Proxy.emitTransfer(msg.sender, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(423)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
  > |        erc20Proxy.emitTransfer(msg.sender, address(0), _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(425)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        uint256 numTransfers = _tos.length;
  > |        uint256 senderBalance = erc20Store.balances(msg.sender);
    |
    |        for (uint256 i = 0; i < numTransfers; i++) {
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(435)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |          if (msg.sender != to) {
    |            senderBalance -= v;
  > |            erc20Store.addBalance(to, v);
    |          }
    |          erc20Proxy.emitTransfer(msg.sender, to, v);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(445)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |            erc20Store.addBalance(to, v);
    |          }
  > |          erc20Proxy.emitTransfer(msg.sender, to, v);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(447)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        }
    |
  > |        erc20Store.setBalance(msg.sender, senderBalance);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(450)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        for (uint256 i=0; i<numSignatures; ++i) {
  > |          address from = ecrecover(sweepMsg, _vs[i], _rs[i], _ss[i]);
    |
    |          // ecrecover returns 0 on malformed input
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(463)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |            sweptSet[from] = true;
    |
  > |            uint256 fromBalance = erc20Store.balances(from);
    |
    |            if (fromBalance > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(469)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |              sweptBalance += fromBalance;
    |
  > |              erc20Store.setBalance(from, 0);
    |
    |              erc20Proxy.emitTransfer(from, _to, fromBalance);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(474)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |              erc20Store.setBalance(from, 0);
    |
  > |              erc20Proxy.emitTransfer(from, _to, fromBalance);
    |            }
    |          }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(476)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        if (sweptBalance > 0) {
  > |          erc20Store.addBalance(_to, sweptBalance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(482)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |            if (sweptSet[from]) {
  > |                uint256 fromBalance = erc20Store.balances(from);
    |
    |                if (fromBalance > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(495)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |                    sweptBalance += fromBalance;
    |
  > |                    erc20Store.setBalance(from, 0);
    |
    |                    erc20Proxy.emitTransfer(from, _to, fromBalance);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(500)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |                    erc20Store.setBalance(from, 0);
    |
  > |                    erc20Proxy.emitTransfer(from, _to, fromBalance);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(502)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        if (sweptBalance > 0) {
  > |            erc20Store.addBalance(_to, sweptBalance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(508)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_to != address(0)); // ensure burn is the cannonical transfer to 0x0
    |
  > |        uint256 balanceOfFrom = erc20Store.balances(_from);
    |        require(_value <= balanceOfFrom);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(524)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_value <= balanceOfFrom);
    |
  > |        uint256 senderAllowance = erc20Store.allowed(_from, _sender);
    |        require(_value <= senderAllowance);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(527)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_value <= senderAllowance);
    |
  > |        erc20Store.setBalance(_from, balanceOfFrom - _value);
    |        erc20Store.addBalance(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(530)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(_from, balanceOfFrom - _value);
  > |        erc20Store.addBalance(_to, _value);
    |
    |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(531)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        erc20Store.addBalance(_to, _value);
    |
  > |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
    |
    |        erc20Proxy.emitTransfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(533)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
    |
  > |        erc20Proxy.emitTransfer(_from, _to, _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(535)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_to != address(0)); // ensure burn is the cannonical transfer to 0x0
    |
  > |        uint256 balanceOfSender = erc20Store.balances(_sender);
    |        require(_value <= balanceOfSender);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(551)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        require(_value <= balanceOfSender);
    |
  > |        erc20Store.setBalance(_sender, balanceOfSender - _value);
    |        erc20Store.addBalance(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(554)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(_sender, balanceOfSender - _value);
  > |        erc20Store.addBalance(_to, _value);
    |
    |        erc20Proxy.emitTransfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(555)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |        erc20Store.addBalance(_to, _value);
    |
  > |        erc20Proxy.emitTransfer(_sender, _to, _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(557)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |    // METHODS (ERC20 sub interface impl.)
    |    function totalSupply() public view returns (uint256) {
  > |        return erc20Store.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(564)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |    function balanceOf(address _owner) public view returns (uint256 balance) {
  > |        return erc20Store.balances(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(568)

[33mWarning[0m for UnhandledException in contract 'ERC20Impl':
    |
    |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
  > |        return erc20Store.allowed(_owner, _spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(572)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        erc20Store.setAllowance(_sender, _spender, _value);
    |        erc20Proxy.emitApproval(_sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(333)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_spender != address(0)); // disallow unspendable approvals
    |        erc20Store.setAllowance(_sender, _spender, _value);
  > |        erc20Proxy.emitApproval(_sender, _spender, _value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        uint256 currentAllowance = erc20Store.allowed(_sender, _spender);
    |        uint256 newAllowance = currentAllowance + _addedValue;
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(newAllowance >= currentAllowance);
    |
  > |        erc20Store.setAllowance(_sender, _spender, newAllowance);
    |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(354)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        erc20Store.setAllowance(_sender, _spender, newAllowance);
  > |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(355)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    {
    |        require(_spender != address(0)); // disallow unspendable approvals
  > |        uint256 currentAllowance = erc20Store.allowed(_sender, _spender);
    |        uint256 newAllowance = currentAllowance - _subtractedValue;
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(370)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(newAllowance <= currentAllowance);
    |
  > |        erc20Store.setAllowance(_sender, _spender, newAllowance);
    |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(375)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        erc20Store.setAllowance(_sender, _spender, newAllowance);
  > |        erc20Proxy.emitApproval(_sender, _spender, newAllowance);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(376)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        delete pendingPrintMap[_lockId];
    |
  > |        uint256 supply = erc20Store.totalSupply();
    |        uint256 newSupply = supply + value;
    |        if (newSupply >= supply) {
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(406)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        uint256 newSupply = supply + value;
    |        if (newSupply >= supply) {
  > |          erc20Store.setTotalSupply(newSupply);
    |          erc20Store.addBalance(receiver, value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(409)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        if (newSupply >= supply) {
    |          erc20Store.setTotalSupply(newSupply);
  > |          erc20Store.addBalance(receiver, value);
    |
    |          emit PrintingConfirmed(_lockId, receiver, value);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |          emit PrintingConfirmed(_lockId, receiver, value);
  > |          erc20Proxy.emitTransfer(address(0), receiver, value);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(413)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    
    |    function burn(uint256 _value) public returns (bool success) {
  > |        uint256 balanceOfSender = erc20Store.balances(msg.sender);
    |        require(_value <= balanceOfSender);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(419)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_value <= balanceOfSender);
    |
  > |        erc20Store.setBalance(msg.sender, balanceOfSender - _value);
    |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(msg.sender, balanceOfSender - _value);
  > |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
    |        erc20Proxy.emitTransfer(msg.sender, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(423)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        erc20Store.setTotalSupply(erc20Store.totalSupply() - _value);
    |
  > |        erc20Proxy.emitTransfer(msg.sender, address(0), _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(425)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        uint256 numTransfers = _tos.length;
  > |        uint256 senderBalance = erc20Store.balances(msg.sender);
    |
    |        for (uint256 i = 0; i < numTransfers; i++) {
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(435)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |          if (msg.sender != to) {
    |            senderBalance -= v;
  > |            erc20Store.addBalance(to, v);
    |          }
    |          erc20Proxy.emitTransfer(msg.sender, to, v);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(445)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |            erc20Store.addBalance(to, v);
    |          }
  > |          erc20Proxy.emitTransfer(msg.sender, to, v);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(447)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        }
    |
  > |        erc20Store.setBalance(msg.sender, senderBalance);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(450)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        for (uint256 i=0; i<numSignatures; ++i) {
  > |          address from = ecrecover(sweepMsg, _vs[i], _rs[i], _ss[i]);
    |
    |          // ecrecover returns 0 on malformed input
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(463)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |            sweptSet[from] = true;
    |
  > |            uint256 fromBalance = erc20Store.balances(from);
    |
    |            if (fromBalance > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(469)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |              sweptBalance += fromBalance;
    |
  > |              erc20Store.setBalance(from, 0);
    |
    |              erc20Proxy.emitTransfer(from, _to, fromBalance);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(474)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |              erc20Store.setBalance(from, 0);
    |
  > |              erc20Proxy.emitTransfer(from, _to, fromBalance);
    |            }
    |          }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(476)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        if (sweptBalance > 0) {
  > |          erc20Store.addBalance(_to, sweptBalance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(482)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |            if (sweptSet[from]) {
  > |                uint256 fromBalance = erc20Store.balances(from);
    |
    |                if (fromBalance > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(495)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |                    sweptBalance += fromBalance;
    |
  > |                    erc20Store.setBalance(from, 0);
    |
    |                    erc20Proxy.emitTransfer(from, _to, fromBalance);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(500)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |                    erc20Store.setBalance(from, 0);
    |
  > |                    erc20Proxy.emitTransfer(from, _to, fromBalance);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(502)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        if (sweptBalance > 0) {
  > |            erc20Store.addBalance(_to, sweptBalance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(508)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_to != address(0)); // ensure burn is the cannonical transfer to 0x0
    |
  > |        uint256 balanceOfFrom = erc20Store.balances(_from);
    |        require(_value <= balanceOfFrom);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(524)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_value <= balanceOfFrom);
    |
  > |        uint256 senderAllowance = erc20Store.allowed(_from, _sender);
    |        require(_value <= senderAllowance);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(527)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_value <= senderAllowance);
    |
  > |        erc20Store.setBalance(_from, balanceOfFrom - _value);
    |        erc20Store.addBalance(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(530)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(_from, balanceOfFrom - _value);
  > |        erc20Store.addBalance(_to, _value);
    |
    |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(531)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        erc20Store.addBalance(_to, _value);
    |
  > |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
    |
    |        erc20Proxy.emitTransfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(533)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        erc20Store.setAllowance(_from, _sender, senderAllowance - _value);
    |
  > |        erc20Proxy.emitTransfer(_from, _to, _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(535)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_to != address(0)); // ensure burn is the cannonical transfer to 0x0
    |
  > |        uint256 balanceOfSender = erc20Store.balances(_sender);
    |        require(_value <= balanceOfSender);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(551)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        require(_value <= balanceOfSender);
    |
  > |        erc20Store.setBalance(_sender, balanceOfSender - _value);
    |        erc20Store.addBalance(_to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |        erc20Store.setBalance(_sender, balanceOfSender - _value);
  > |        erc20Store.addBalance(_to, _value);
    |
    |        erc20Proxy.emitTransfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(555)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |        erc20Store.addBalance(_to, _value);
    |
  > |        erc20Proxy.emitTransfer(_sender, _to, _value);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(557)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |    // METHODS (ERC20 sub interface impl.)
    |    function totalSupply() public view returns (uint256) {
  > |        return erc20Store.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(564)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |    function balanceOf(address _owner) public view returns (uint256 balance) {
  > |        return erc20Store.balances(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(568)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Impl':
    |
    |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
  > |        return erc20Store.allowed(_owner, _spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(572)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |    // FUNCTIONS
    |    function generateLockId() internal returns (bytes32 lockId) {
  > |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |        lockId = generateLockId();
    |
  > |        custodianChangeReqs[lockId] = CustodianChangeRequest({
    |            proposedNew: _proposedCustodian
    |        });
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |        lockId = generateLockId();
    |
  > |        pendingPrintMap[lockId] = PendingPrint({
    |            receiver: _receiver,
    |            value: _value
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(386)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |          // ecrecover returns 0 on malformed input
    |          if (from != address(0)) {
  > |            sweptSet[from] = true;
    |
    |            uint256 fromBalance = erc20Store.balances(from);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |
    |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
  > |        custodian = getCustodianChangeReq(_lockId);
    |
    |        delete custodianChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |        custodian = getCustodianChangeReq(_lockId);
    |
  > |        delete custodianChangeReqs[_lockId];
    |
    |        emit CustodianChangeConfirmed(_lockId, custodian);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Impl':
    |        uint256 value = print.value;
    |
  > |        delete pendingPrintMap[_lockId];
    |
    |        uint256 supply = erc20Store.totalSupply();
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(404)

[33mWarning[0m for LockedEther in contract 'ERC20ImplUpgradeable':
    |}
    |
  > |contract ERC20ImplUpgradeable is CustodianUpgradeable  {
    |
    |    // TYPES
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |    address public custodian;
    |
  > |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |    }
    |
  > |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
    |        custodian = getCustodianChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  > |    mapping (bytes32 => ImplChangeRequest) public implChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |    }
    |    
  > |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |
    |    // MEMBERS
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |
    |    // FUNCTIONS
  > |    function generateLockId() internal returns (bytes32 lockId) {
    |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |
    |    // MEMBERS
  > |    address public custodian;
    |
    |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |    // (UPGRADE)
    |
  > |    function requestCustodianChange(address _proposedCustodian) public returns (bytes32 lockId) {
    |        require(_proposedCustodian != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getCustodianChangeReq(bytes32 _lockId) private view returns (address _proposedNew) {
    |        CustodianChangeRequest storage changeRequest = custodianChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |    // MEMBERS
    |    // @dev  The reference to the active token implementation.
  > |    ERC20Impl public erc20Impl;
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |    // PUBLIC FUNCTIONS
    |    // (UPGRADE)
  > |    function requestImplChange(address _proposedImpl) public returns (bytes32 lockId) {
    |        require(_proposedImpl != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'ERC20ImplUpgradeable':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getImplChangeReq(bytes32 _lockId) private view returns (ERC20Impl _proposedNew) {
    |        ImplChangeRequest storage changeRequest = implChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |    // FUNCTIONS
    |    function generateLockId() internal returns (bytes32 lockId) {
  > |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |        lockId = generateLockId();
    |
  > |        custodianChangeReqs[lockId] = CustodianChangeRequest({
    |            proposedNew: _proposedCustodian
    |        });
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |        lockId = generateLockId();
    |
  > |        implChangeReqs[lockId] = ImplChangeRequest({
    |            proposedNew: _proposedImpl
    |        });
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |
    |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
  > |        custodian = getCustodianChangeReq(_lockId);
    |
    |        delete custodianChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |        custodian = getCustodianChangeReq(_lockId);
    |
  > |        delete custodianChangeReqs[_lockId];
    |
    |        emit CustodianChangeConfirmed(_lockId, custodian);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |    
    |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
  > |        erc20Impl = getImplChangeReq(_lockId);
    |
    |        delete implChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20ImplUpgradeable':
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  > |        delete implChangeReqs[_lockId];
    |
    |        emit ImplChangeConfirmed(_lockId, address(erc20Impl));
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(129)

[33mWarning[0m for LockedEther in contract 'ERC20Proxy':
    |
    |
  > |contract ERC20Proxy is ERC20Interface, ERC20ImplUpgradeable {
    |
    |    // MEMBERS
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    address public custodian;
    |
  > |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    }
    |
  > |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
    |        custodian = getCustodianChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  > |    mapping (bytes32 => ImplChangeRequest) public implChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    }
    |    
  > |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return erc20Impl.balanceOf(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(228)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    }
    |
  > |    function emitTransfer(address _from, address _to, uint256 _value) public onlyImpl {
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(232)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        return erc20Impl.transferWithSender(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(236)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        return erc20Impl.transferFromWithSender(msg.sender, _from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(240)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    }
    |
  > |    function emitApproval(address _owner, address _spender, uint256 _value) public onlyImpl {
    |        emit Approval(_owner, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(244)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        return erc20Impl.approveWithSender(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(248)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    
  > |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool success) {
    |        return erc20Impl.increaseApprovalWithSender(msg.sender, _spender, _addedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(253)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    
  > |    function decreaseApproval(address _spender, uint256 _subtractedValue) public returns (bool success) {
    |        return erc20Impl.decreaseApprovalWithSender(msg.sender, _spender, _subtractedValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    }
    |    
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return erc20Impl.allowance(_owner, _spender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(262)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    // MEMBERS
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    // FUNCTIONS
  > |    function generateLockId() internal returns (bytes32 lockId) {
    |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    // MEMBERS
  > |    address public custodian;
    |
    |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    // (UPGRADE)
    |
  > |    function requestCustodianChange(address _proposedCustodian) public returns (bytes32 lockId) {
    |        require(_proposedCustodian != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getCustodianChangeReq(bytes32 _lockId) private view returns (address _proposedNew) {
    |        CustodianChangeRequest storage changeRequest = custodianChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    // MEMBERS
    |    // @dev  The reference to the active token implementation.
  > |    ERC20Impl public erc20Impl;
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    // PUBLIC FUNCTIONS
    |    // (UPGRADE)
  > |    function requestImplChange(address _proposedImpl) public returns (bytes32 lockId) {
    |        require(_proposedImpl != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getImplChangeReq(bytes32 _lockId) private view returns (ERC20Impl _proposedNew) {
    |        ImplChangeRequest storage changeRequest = implChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |
    |    // MEMBERS
  > |    string public name;
    |
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    string public name;
    |
  > |    string public symbol;
    |
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    string public symbol;
    |
  > |    uint8 public decimals;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Proxy':
    |    // PUBLIC FUNCTIONS
    |    // (ERC20Interface)
  > |    function totalSupply() public view returns (uint256) {
    |        return erc20Impl.totalSupply();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(224)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |    // (ERC20Interface)
    |    function totalSupply() public view returns (uint256) {
  > |        return erc20Impl.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(225)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |
    |    function balanceOf(address _owner) public view returns (uint256 balance) {
  > |        return erc20Impl.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(229)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.transferWithSender(msg.sender, _to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(237)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.transferFromWithSender(msg.sender, _from, _to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(241)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.approveWithSender(msg.sender, _spender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(249)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |    
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool success) {
  > |        return erc20Impl.increaseApprovalWithSender(msg.sender, _spender, _addedValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(254)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |    
    |    function decreaseApproval(address _spender, uint256 _subtractedValue) public returns (bool success) {
  > |        return erc20Impl.decreaseApprovalWithSender(msg.sender, _spender, _subtractedValue);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(259)

[33mWarning[0m for UnhandledException in contract 'ERC20Proxy':
    |    
    |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
  > |        return erc20Impl.allowance(_owner, _spender);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(263)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |    // (ERC20Interface)
    |    function totalSupply() public view returns (uint256) {
  > |        return erc20Impl.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |
    |    function balanceOf(address _owner) public view returns (uint256 balance) {
  > |        return erc20Impl.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.transferWithSender(msg.sender, _to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.transferFromWithSender(msg.sender, _from, _to, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        return erc20Impl.approveWithSender(msg.sender, _spender, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |    
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool success) {
  > |        return erc20Impl.increaseApprovalWithSender(msg.sender, _spender, _addedValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |    
    |    function decreaseApproval(address _spender, uint256 _subtractedValue) public returns (bool success) {
  > |        return erc20Impl.decreaseApprovalWithSender(msg.sender, _spender, _subtractedValue);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Proxy':
    |    
    |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
  > |        return erc20Impl.allowance(_owner, _spender);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |    // FUNCTIONS
    |    function generateLockId() internal returns (bytes32 lockId) {
  > |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |        lockId = generateLockId();
    |
  > |        custodianChangeReqs[lockId] = CustodianChangeRequest({
    |            proposedNew: _proposedCustodian
    |        });
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |        lockId = generateLockId();
    |
  > |        implChangeReqs[lockId] = ImplChangeRequest({
    |            proposedNew: _proposedImpl
    |        });
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |
    |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
  > |        custodian = getCustodianChangeReq(_lockId);
    |
    |        delete custodianChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |        custodian = getCustodianChangeReq(_lockId);
    |
  > |        delete custodianChangeReqs[_lockId];
    |
    |        emit CustodianChangeConfirmed(_lockId, custodian);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |    
    |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
  > |        erc20Impl = getImplChangeReq(_lockId);
    |
    |        delete implChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Proxy':
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  > |        delete implChangeReqs[_lockId];
    |
    |        emit ImplChangeConfirmed(_lockId, address(erc20Impl));
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(129)

[33mWarning[0m for LockedEther in contract 'ERC20Store':
    |
    |
  > |contract ERC20Store is ERC20ImplUpgradeable {
    |
    |    // MEMBERS
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(581)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |    address public custodian;
    |
  > |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |    }
    |
  > |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
    |        custodian = getCustodianChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  > |    mapping (bytes32 => ImplChangeRequest) public implChangeReqs;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |    }
    |    
  > |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balances;
    |
    |    mapping (address => mapping (address => uint256)) public allowed;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(586)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |    mapping (address => uint256) public balances;
    |
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(588)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |    // (ERC20 Ledger)
    |
  > |    function setTotalSupply(
    |        uint256 _newTotalSupply
    |    )
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(599)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |    }
    |
  > |    function setAllowance(
    |        address _owner,
    |        address _spender,
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(608)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |    }
    |
  > |    function setBalance(
    |        address _owner,
    |        uint256 _newBalance
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(619)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Store':
    |    }
    |
  > |    function addBalance(
    |        address _owner,
    |        uint256 _balanceIncrease
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(629)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    // MEMBERS
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    // FUNCTIONS
  > |    function generateLockId() internal returns (bytes32 lockId) {
    |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    // MEMBERS
  > |    address public custodian;
    |
    |    mapping (bytes32 => CustodianChangeRequest) public custodianChangeReqs;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |    // (UPGRADE)
    |
  > |    function requestCustodianChange(address _proposedCustodian) public returns (bytes32 lockId) {
    |        require(_proposedCustodian != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getCustodianChangeReq(bytes32 _lockId) private view returns (address _proposedNew) {
    |        CustodianChangeRequest storage changeRequest = custodianChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |    // MEMBERS
    |    // @dev  The reference to the active token implementation.
  > |    ERC20Impl public erc20Impl;
    |
    |    /// @dev  The map of lock ids to pending implementation changes.
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |    // PUBLIC FUNCTIONS
    |    // (UPGRADE)
  > |    function requestImplChange(address _proposedImpl) public returns (bytes32 lockId) {
    |        require(_proposedImpl != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    // PRIVATE FUNCTIONS
  > |    function getImplChangeReq(bytes32 _lockId) private view returns (ERC20Impl _proposedNew) {
    |        ImplChangeRequest storage changeRequest = implChangeReqs[_lockId];
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Store':
    |
    |    // MEMBERS
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(584)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Store':
    |    // FUNCTIONS
    |    function generateLockId() internal returns (bytes32 lockId) {
  > |        return keccak256(block.blockhash(block.number - 1), address(this), ++lockRequestCount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        lockId = generateLockId();
    |
  > |        custodianChangeReqs[lockId] = CustodianChangeRequest({
    |            proposedNew: _proposedCustodian
    |        });
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        lockId = generateLockId();
    |
  > |        implChangeReqs[lockId] = ImplChangeRequest({
    |            proposedNew: _proposedImpl
    |        });
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |
    |    function confirmCustodianChange(bytes32 _lockId) public onlyCustodian {
  > |        custodian = getCustodianChangeReq(_lockId);
    |
    |        delete custodianChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        custodian = getCustodianChangeReq(_lockId);
    |
  > |        delete custodianChangeReqs[_lockId];
    |
    |        emit CustodianChangeConfirmed(_lockId, custodian);
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |    
    |    function confirmImplChange(bytes32 _lockId) public onlyCustodian {
  > |        erc20Impl = getImplChangeReq(_lockId);
    |
    |        delete implChangeReqs[_lockId];
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        erc20Impl = getImplChangeReq(_lockId);
    |
  > |        delete implChangeReqs[_lockId];
    |
    |        emit ImplChangeConfirmed(_lockId, address(erc20Impl));
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        onlyImpl
    |    {
  > |        totalSupply = _newTotalSupply;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(605)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        onlyImpl
    |    {
  > |        allowed[_owner][_spender] = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(616)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        onlyImpl
    |    {
  > |        balances[_owner] = _newBalance;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(626)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Store':
    |        onlyImpl
    |    {
  > |        balances[_owner] = balances[_owner] + _balanceIncrease;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(636)

[33mWarning[0m for LockedEther in contract 'LockRequestable':
    |pragma solidity ^0.4.21;
    |
  > |contract LockRequestable {
    |
    |    // MEMBERS
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'LockRequestable':
    |
    |    // MEMBERS
  > |    uint256 public lockRequestCount;
    |
    |    // CONSTRUCTOR
  at /home/jiaming/mavs_srcs/contract@0xe125841df1cdd71e1a89ab391cca1d6fc2689188.sol(6)


