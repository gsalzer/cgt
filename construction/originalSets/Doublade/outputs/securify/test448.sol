Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:AKC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol:TokenController
[33mWarning[0m for DAO in contract 'AKC':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                revert();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(580)

[33mWarning[0m for DAOConstantGas in contract 'AKC':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(597)

[33mWarning[0m for LockedEther in contract 'AKC':
    |}
    |
  > |contract AKC is DSToken("AKC"), ERC223, Controlled {
    |
    |    constructor() {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(387)

[31mViolation[0m for TODAmount in contract 'AKC':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(597)

[31mViolation[0m for TODReceiver in contract 'AKC':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                revert();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(580)

[31mViolation[0m for TODReceiver in contract 'AKC':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(597)

[31mViolation[0m for UnhandledException in contract 'AKC':
    |            if(_to == address(this)) revert();
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.call.value(0)(bytes4(keccak256(_custom_fallback)), _from, _amount, _data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(492)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(138)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(403)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        {
    |            // ERC20 backward compatiability
  > |            if(!_to.call(bytes4(keccak256("tokenFallback(address,uint256)")), _from, _amount)) {
    |                // do nothing when error in call in case that the _to contract is not inherited from ERC223ReceivingContract
    |                // revert();
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(412)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(434)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        if (isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(_from, _amount, _data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(442)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(483)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onApprove(msg.sender, _spender, _amount))
    |                revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(524)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        if (!approve(_spender, _amount)) revert();
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(553)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                revert();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(580)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(597)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |
    |        ERC20 token = ERC20(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(602)

[33mWarning[0m for UnhandledException in contract 'AKC':
    |        ERC20 token = ERC20(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(603)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(403)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        {
    |            // ERC20 backward compatiability
  > |            if(!_to.call(bytes4(keccak256("tokenFallback(address,uint256)")), _from, _amount)) {
    |                // do nothing when error in call in case that the _to contract is not inherited from ERC223ReceivingContract
    |                // revert();
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(434)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        if (isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(_from, _amount, _data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(442)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |            if(_to == address(this)) revert();
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.call.value(0)(bytes4(keccak256(_custom_fallback)), _from, _amount, _data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(492)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onApprove(msg.sender, _spender, _amount))
    |                revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(524)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        if (!approve(_spender, _amount)) revert();
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(553)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                revert();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(580)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(597)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |
    |        ERC20 token = ERC20(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(602)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AKC':
    |        ERC20 token = ERC20(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        emit ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(603)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    {
    |        if (src != msg.sender && _approvals[src][msg.sender] != uint(-1)) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        emit Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        emit Mint(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        emit Mint(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    function burn(address guy, uint wad) public auth stoppable {
    |        if (guy != msg.sender && _approvals[guy][msg.sender] != uint(-1)) {
  > |            _approvals[guy][msg.sender] = sub(_approvals[guy][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |        }
    |
  > |        _balances[guy] = sub(_balances[guy], wad);
    |        _supply = sub(_supply, wad);
    |        emit Burn(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |
    |        _balances[guy] = sub(_balances[guy], wad);
  > |        _supply = sub(_supply, wad);
    |        emit Burn(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'AKC':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(365)

[33mWarning[0m for LockedEther in contract 'Controlled':
    |
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(353)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(364)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { if (msg.sender != controller) revert(); _; }
    |
  > |    address public controller;
    |
    |    constructor() { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(365)

[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(138)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(130)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(121)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(95)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |pragma solidity ^0.4.19;
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(3)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(144)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(138)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |
    |
  > |contract DSStop is DSNote, DSAuth {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(181)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(182)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(138)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |}
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    bytes32  public  symbol;
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(236)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    event Burn(address indexed guy, uint wad);
    |
  > |    function approve(address guy) public stoppable returns (bool) {
    |        return super.approve(guy, uint(-1));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(248)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSToken is DSTokenBase(0), DSStop {
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
    |    constructor(bytes32 symbol_) public {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(239)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    // Optional token name
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) public auth {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(305)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(182)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        emit Mint(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(290)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        emit Mint(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(291)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    {
    |        if (src != msg.sender && _approvals[src][msg.sender] != uint(-1)) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(262)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |}
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(187)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    {
    |        if (src != msg.sender) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(228)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |}
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/mavs_srcs/contract@0x1ca43a170bad619322e6f54d46b57e504db663aa.sol(71)


