Processing contract: /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol:MiniMeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol:MiniMeTokenFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol:TokenController
[33mWarning[0m for LockedEther in contract 'Controlled':
    |
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) public onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { require(msg.sender == controller); _; }
    |
  > |    address public controller;
    |
    |    function Controlled() public { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(41)

[33mWarning[0m for DAO in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(525)

[33mWarning[0m for DAOConstantGas in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(538)

[33mWarning[0m for LockedEther in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(77)

[31mViolation[0m for TODAmount in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(538)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(525)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(538)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(227)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(268)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(297)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(333)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(358)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(391)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(400)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(525)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(538)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(543)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               require(TokenController(controller).onTransfer(_from, _to, _amount));
    |           }
    |
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require(TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        require(approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(333)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(358)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        ) public returns(address) {
    |        if (_snapshotBlock == 0) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(400)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function () public payable {
    |        require(isContract(controller));
  > |        require(TokenController(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(525)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function claimTokens(address _token) public onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(538)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |
    |        MiniMeToken token = MiniMeToken(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(543)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        MiniMeToken token = MiniMeToken(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(544)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |///  that deploys the contract, so usually this token will be deployed by a
    |///  token controller contract, which Giveth will call a "Campaign"
  > |contract MiniMeToken is Controlled {
    |
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |            // The standard ERC 20 transferFrom functionality
    |            require(allowed[_from][msg.sender] >= _amount);
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        doTransfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(496)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) public onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) public onlyController {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(452)

[33mWarning[0m for LockedEther in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(570)

[31mViolation[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |    /// @param _transfersEnabled If true, tokens will be able to be transferred
    |    /// @return The address of the new token contract
  > |    function createCloneToken(
    |        address _parentToken,
    |        uint _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(582)

[33mWarning[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(570)

[33mWarning[0m for UnhandledException in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1630bf1c68bbc4663ec3592050e4eac0a2925f3a.sol(600)


