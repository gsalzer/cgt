Processing contract: /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol:KayoToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol:TokenController
[33mWarning[0m for LockedEther in contract 'KayoToken':
    |    }
    |
  > |    contract KayoToken is Owned {
    |
    |        string public name;                
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(27)

[33mWarning[0m for UnhandledException in contract 'KayoToken':
    |
    |            if (isValidAddress(owner)) {
  > |                require(TokenController(owner).onApprove(msg.sender, _spender, _amount));
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(202)

[33mWarning[0m for UnhandledException in contract 'KayoToken':
    |
    |            require(approve(_spender, _amount));
  > |            ApproveAndCallFallBack(_spender).receiveApproval(msg.sender,_amount,this,_extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(217)

[33mWarning[0m for UnhandledException in contract 'KayoToken':
    |            if ((balances[_owner].length == 0) || (balances[_owner][0].fromBlock > _blockNumber)) {
    |                if (address(parentToken) != 0) {
  > |                    return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |                } else {
    |                    return 0;
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(229)

[33mWarning[0m for UnhandledException in contract 'KayoToken':
    |            if ((totalSupplyHistory.length == 0) || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |                if (address(parentToken) != 0) {
  > |                    return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |                } else {
    |                    return 0;
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KayoToken':
    |
    |            if (isValidAddress(owner)) {
  > |                require(TokenController(owner).onApprove(msg.sender, _spender, _amount));
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KayoToken':
    |
    |            require(approve(_spender, _amount));
  > |            ApproveAndCallFallBack(_spender).receiveApproval(msg.sender,_amount,this,_extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KayoToken':
    |            if ((balances[_owner].length == 0) || (balances[_owner][0].fromBlock > _blockNumber)) {
    |                if (address(parentToken) != 0) {
  > |                    return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |                } else {
    |                    return 0;
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KayoToken':
    |            if ((totalSupplyHistory.length == 0) || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |                if (address(parentToken) != 0) {
  > |                    return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |                } else {
    |                    return 0;
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |
    |        function changeOwner(address _newOwner) public onlyOwner {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(12)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |    }
    |
  > |    contract KayoToken is Owned {
    |
    |        string public name;                
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |
    |        function freezeAccount(address target, bool freeze) onlyOwner public{
  > |            frozenAccount[target] = freeze;
    |            FrozenFunds(target, freeze);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |
    |        function setPreSale (bool _value) onlyOwner public {
  > |            IsPreSaleEnabled = _value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |
    |        function setSale (bool _value) onlyOwner public {
  > |            IsSaleEnabled = _value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |
    |        function setAirDrop (bool _value) onlyOwner public {
  > |            IsAirDropEnabled = _value;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |
    |        function setAirDropManager (address _address) onlyOwner public{
  > |            airDropManager = _address;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |
    |        function setairDropManagerLimit(uint _amount) onlyOwner public returns (bool success){
  > |            allowedAirDropTokens = _amount;
    |            approve(airDropManager, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |                if (msg.sender != owner) {
    |                    require(allowed[_from][msg.sender] >= _amount);
  > |                    allowed[_from][msg.sender] -= _amount;
    |                }
    |
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |            }
    |
  > |            allowed[msg.sender][_spender] = _amount;
    |            Approval(msg.sender, _spender, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |
    |            uint256 _bal = _amount * 30;
  > |            preSaleTokenBalances = preSaleTokenBalances + _bal / 100;
    |            Transfer(0, _owner, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |            updateValueAtNow(totalSupplyHistory, 0);
    |            updateValueAtNow(balances[msg.sender], 0);
  > |            preSaleTokenBalances = 0;
    |            Transfer(msg.sender, 0, curBalance);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |
    |        function enableTransfers(bool _tradeEnabled) public onlyOwner {
  > |            tradeEnabled = _tradeEnabled;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |            if ((checkpoints.length == 0) || (checkpoints[checkpoints.length -1].fromBlock < block.number)) {
    |                Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
  > |                newCheckPoint.fromBlock =  uint128(block.number);
    |                newCheckPoint.value = uint128(_value);
    |            } else {
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |                Checkpoint storage newCheckPoint = checkpoints[ checkpoints.length++ ];
    |                newCheckPoint.fromBlock =  uint128(block.number);
  > |                newCheckPoint.value = uint128(_value);
    |            } else {
    |                Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'KayoToken':
    |            } else {
    |                Checkpoint storage oldCheckPoint = checkpoints[checkpoints.length-1];
  > |                oldCheckPoint.value = uint128(_value);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(321)

[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.18;
    |
  > |    contract Owned {
    |
    |        modifier onlyOwner { require(msg.sender == owner); _; }
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |        function Owned() public { owner = msg.sender;}
    |
  > |        function changeOwner(address _newOwner) public onlyOwner {
    |            owner = _newOwner;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        modifier onlyOwner { require(msg.sender == owner); _; }
    |
  > |        address public owner;
    |
    |        function Owned() public { owner = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        function changeOwner(address _newOwner) public onlyOwner {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcdf3be99c296828301847025b547faa0c3deb04e.sol(12)


