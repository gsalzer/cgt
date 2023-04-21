Processing contract: /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol:Crowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol:ShiftSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol:Token
[33mWarning[0m for DAO in contract 'ShiftSale':
    |    validAmount
    |    {
  > |        if(crowdSale.shiftSalePurchase.value(msg.value - fee)()){
    |            FundTransfer(msg.value - fee);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(79)

[33mWarning[0m for DAOConstantGas in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        _to.transfer(_value);
    |    }
    |    /// @dev Allows to refund the ETH to destination addresses. Transaction has to be sent by an owner.
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(113)

[33mWarning[0m for DAOConstantGas in contract 'ShiftSale':
    |        require(_to.length == _value.length);
    |        for (uint i = 0; i < _to.length; i++) {
  > |            _to[i].transfer(_value[i]);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(123)

[33mWarning[0m for DAOConstantGas in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(138)

[33mWarning[0m for LockedEther in contract 'ShiftSale':
    |}
    |
  > |contract ShiftSale {
    |
    |    Crowdsale public crowdSale;
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(12)

[31mViolation[0m for TODAmount in contract 'ShiftSale':
    |    validAmount
    |    {
  > |        if(crowdSale.shiftSalePurchase.value(msg.value - fee)()){
    |            FundTransfer(msg.value - fee);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(79)

[31mViolation[0m for TODAmount in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(138)

[33mWarning[0m for TODAmount in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        _to.transfer(_value);
    |    }
    |    /// @dev Allows to refund the ETH to destination addresses. Transaction has to be sent by an owner.
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(113)

[33mWarning[0m for TODReceiver in contract 'ShiftSale':
    |    validAmount
    |    {
  > |        if(crowdSale.shiftSalePurchase.value(msg.value - fee)()){
    |            FundTransfer(msg.value - fee);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(79)

[33mWarning[0m for TODReceiver in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        _to.transfer(_value);
    |    }
    |    /// @dev Allows to refund the ETH to destination addresses. Transaction has to be sent by an owner.
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(113)

[33mWarning[0m for TODReceiver in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(138)

[33mWarning[0m for UnhandledException in contract 'ShiftSale':
    |    validAmount
    |    {
  > |        if(crowdSale.shiftSalePurchase.value(msg.value - fee)()){
    |            FundTransfer(msg.value - fee);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(79)

[33mWarning[0m for UnhandledException in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        token.transfer(_to, _value);
    |    }
    |    /// @dev Allows to withdraw the ETH from the CrowdSale contract. Transaction has to be sent by an owner.
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(99)

[33mWarning[0m for UnhandledException in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        crowdSale.safeWithdrawal();
    |    }
    |    /// @dev Allows to refund the ETH to destination address. Transaction has to be sent by an owner.
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(105)

[33mWarning[0m for UnhandledException in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        _to.transfer(_value);
    |    }
    |    /// @dev Allows to refund the ETH to destination addresses. Transaction has to be sent by an owner.
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(113)

[33mWarning[0m for UnhandledException in contract 'ShiftSale':
    |        require(_to.length == _value.length);
    |        for (uint i = 0; i < _to.length; i++) {
  > |            _to[i].transfer(_value[i]);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(123)

[33mWarning[0m for UnhandledException in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(138)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        _to.transfer(_value);
    |    }
    |    /// @dev Allows to refund the ETH to destination addresses. Transaction has to be sent by an owner.
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(113)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        token.transfer(_to, _value);
    |    }
    |    /// @dev Allows to withdraw the ETH from the CrowdSale contract. Transaction has to be sent by an owner.
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(99)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        crowdSale.safeWithdrawal();
    |    }
    |    /// @dev Allows to refund the ETH to destination address. Transaction has to be sent by an owner.
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'ShiftSale':
    |    ownerExists(msg.sender)
    |    public {
  > |        fee = _fee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b1fb08639acec6ed415bacab6453b523aec7d4b.sol(131)


