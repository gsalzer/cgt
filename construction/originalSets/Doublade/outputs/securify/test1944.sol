Processing contract: /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol:ApproveAndCallReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol:Controller
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol:GNR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol:MiniMeIrrevocableVestedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol:MiniMeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol:MiniMeTokenFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Controlled':
    |// inspired by Zeppelin's Vested Token deriving MiniMeToken
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |
    |
  > |    address public controller;
    |
    |    function Controlled() { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(67)

[33mWarning[0m for DAO in contract 'MiniMeToken':
    |    function ()  payable {
    |        require(isContract(controller));
  > |        assert(Controller(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(579)

[33mWarning[0m for LockedEther in contract 'MiniMeToken':
    |}
    |
  > |contract MiniMeToken is ERC20, Controlled {
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
    |    uint8 public decimals;             //Number of decimals of the smallest unit
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(116)

[31mViolation[0m for TODReceiver in contract 'MiniMeToken':
    |    function ()  payable {
    |        require(isContract(controller));
  > |        assert(Controller(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(579)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               assert(Controller(controller).onTransfer(_from,_to,_amount));
    |
    |           }
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(265)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            assert(Controller(controller).onApprove(msg.sender,_spender,_amount));
    |
    |            //  if (!Controller(controller).onApprove(msg.sender, _spender, _amount))
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(310)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        //  _tokenContract, bytes _extraData)` It is assumed that the call
    |        //  *should* succeed, otherwise the plain vanilla approve would be used
  > |        ApproveAndCallReceiver(_spender).receiveApproval(
    |           msg.sender,
    |           _amount,
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(348)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(383)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(408)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |        ) returns(address) {
    |        if (_snapshotBlock > block.number) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(445)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(454)

[33mWarning[0m for UnhandledException in contract 'MiniMeToken':
    |    function ()  payable {
    |        require(isContract(controller));
  > |        assert(Controller(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(579)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |           // Alerts the token controller of the transfer
    |           if (isContract(controller)) {
  > |               assert(Controller(controller).onTransfer(_from,_to,_amount));
    |
    |           }
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            assert(Controller(controller).onApprove(msg.sender,_spender,_amount));
    |
    |            //  if (!Controller(controller).onApprove(msg.sender, _spender, _amount))
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        //  _tokenContract, bytes _extraData)` It is assumed that the call
    |        //  *should* succeed, otherwise the plain vanilla approve would be used
  > |        ApproveAndCallReceiver(_spender).receiveApproval(
    |           msg.sender,
    |           _amount,
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(348)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (balances[_owner][0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                // Has no parent
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |            if (address(parentToken) != 0) {
  > |                return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |            } else {
    |                return 0;
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(408)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |        ) returns(address) {
    |        if (_snapshotBlock > block.number) _snapshotBlock = block.number;
  > |        MiniMeToken cloneToken = tokenFactory.createCloneToken(
    |            this,
    |            _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(445)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |            );
    |
  > |        cloneToken.changeController(msg.sender);
    |
    |        // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(454)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeToken':
    |    function ()  payable {
    |        require(isContract(controller));
  > |        assert(Controller(controller).proxyPayment.value(msg.value)(msg.sender));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |}
    |
  > |contract MiniMeToken is ERC20, Controlled {
    |    string public name;                //The Token's name: e.g. DigixDAO Tokens
    |    uint8 public decimals;             //Number of decimals of the smallest unit
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |
    |            ////if (allowed[_from][msg.sender] < _amount) throw;
  > |            allowed[_from][msg.sender] -= _amount;
    |        }
    |        return doTransfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |        || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |               newCheckPoint.fromBlock =  uint128(block.number);
    |               newCheckPoint.value = uint128(_value);
    |           } else {
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |               Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
    |               newCheckPoint.fromBlock =  uint128(block.number);
  > |               newCheckPoint.value = uint128(_value);
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(555)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |           } else {
    |               Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  > |               oldCheckPoint.value = uint128(_value);
    |           }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'MiniMeToken':
    |    /// @param _transfersEnabled True if transfers are allowed in the clone
    |    function enableTransfers(bool _transfersEnabled) onlyController {
  > |        transfersEnabled = _transfersEnabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(511)

[33mWarning[0m for LockedEther in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(597)

[31mViolation[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |    /// @param _transfersEnabled If true, tokens will be able to be transferred
    |    /// @return The address of the new token contract
  > |    function createCloneToken(
    |        address _parentToken,
    |        uint _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(609)

[33mWarning[0m for MissingInputValidation in contract 'MiniMeTokenFactory':
    |///  In solidity this is the way to create a contract from a contract of the
    |///  same class
  > |contract MiniMeTokenFactory {
    |
    |    /// @notice Update the DApp by creating a new token with new functionalities
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(597)

[33mWarning[0m for UnhandledException in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(627)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MiniMeTokenFactory':
    |            );
    |
  > |        newToken.changeController(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(627)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7d72eccd69855a420c4c09ebfb41d4bcb41ba7fd.sol(6)


