Processing contract: /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol:hackethereumIco
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol:hackoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol:mortal
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'hackethereumIco':
    |        require(amount <= this.balance);
    |
  > |        if (_beneficiary.send(amount))
    |        {
    |            FundTransfer(_beneficiary, "Withdrawal", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(199)

[33mWarning[0m for DAOConstantGas in contract 'hackethereumIco':
    |        require(amount <= this.balance);
    |
  > |        if (targetAddress.send(amount))
    |        {
    |            FundTransfer(targetAddress, "Decisive hack", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(214)

[33mWarning[0m for DAOConstantGas in contract 'hackethereumIco':
    |        _lastWhitehat = now;
    |
  > |        if (_whitehat.send(amount))
    |        {
    |            FundTransfer(_whitehat, "Whitehat recovery", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(249)

[33mWarning[0m for DAOConstantGas in contract 'hackethereumIco':
    |        _lastHack = now;
    |
  > |        if (targetAddress.send(amount))
    |        {
    |            FundTransfer(targetAddress, "Hack", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(305)

[33mWarning[0m for LockedEther in contract 'hackethereumIco':
    |}
    |
  > |contract hackethereumIco is mortal {
    |    uint256 public _amountRaised;
    |    uint256 public _deadline;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(49)

[31mViolation[0m for TODAmount in contract 'hackethereumIco':
    |        _lastWhitehat = now;
    |
  > |        if (_whitehat.send(amount))
    |        {
    |            FundTransfer(_whitehat, "Whitehat recovery", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(249)

[31mViolation[0m for TODAmount in contract 'hackethereumIco':
    |        _lastHack = now;
    |
  > |        if (targetAddress.send(amount))
    |        {
    |            FundTransfer(targetAddress, "Hack", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(305)

[33mWarning[0m for TODAmount in contract 'hackethereumIco':
    |        require(amount <= this.balance);
    |
  > |        if (_beneficiary.send(amount))
    |        {
    |            FundTransfer(_beneficiary, "Withdrawal", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(199)

[33mWarning[0m for TODAmount in contract 'hackethereumIco':
    |        require(amount <= this.balance);
    |
  > |        if (targetAddress.send(amount))
    |        {
    |            FundTransfer(targetAddress, "Decisive hack", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(214)

[31mViolation[0m for TODReceiver in contract 'hackethereumIco':
    |        require(amount <= this.balance);
    |
  > |        if (_beneficiary.send(amount))
    |        {
    |            FundTransfer(_beneficiary, "Withdrawal", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(199)

[33mWarning[0m for TODReceiver in contract 'hackethereumIco':
    |        require(amount <= this.balance);
    |
  > |        if (targetAddress.send(amount))
    |        {
    |            FundTransfer(targetAddress, "Decisive hack", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(214)

[33mWarning[0m for TODReceiver in contract 'hackethereumIco':
    |        _lastHack = now;
    |
  > |        if (targetAddress.send(amount))
    |        {
    |            FundTransfer(targetAddress, "Hack", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(305)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _adeptToken = hackoin(adeptTokenContractAddress);
    |
  > |        _hackoinToken.mintToken(msg.sender, _participationMax*2);
    |        _tenuousToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _educatedToken.mintToken(msg.sender, _hackTokenThreshold*2);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(143)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |
    |        _hackoinToken.mintToken(msg.sender, _participationMax*2);
  > |        _tenuousToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _educatedToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _adeptToken.mintToken(msg.sender, _hackTokenThreshold*2);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(144)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _hackoinToken.mintToken(msg.sender, _participationMax*2);
    |        _tenuousToken.mintToken(msg.sender, _hackTokenThreshold*2);
  > |        _educatedToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _adeptToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _initialised = true;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(145)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _tenuousToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _educatedToken.mintToken(msg.sender, _hackTokenThreshold*2);
  > |        _adeptToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _initialised = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(146)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _amountRaised += amount;
    |
  > |        _hackoinToken.mintToken(msg.sender, tokenAmount);
    |        FundTransfer(msg.sender, "Ticket Purchase", amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(183)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        require(amount <= this.balance);
    |
  > |        if (_beneficiary.send(amount))
    |        {
    |            FundTransfer(_beneficiary, "Withdrawal", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(199)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        require(_hackerDecisive == msg.sender);
    |
  > |        require(_hackoinToken.balanceOf(targetAddress) >= _participationMax*2);
    |
    |        require(this.balance > 0);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(209)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        require(amount <= this.balance);
    |
  > |        if (targetAddress.send(amount))
    |        {
    |            FundTransfer(targetAddress, "Decisive hack", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(214)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _lastWhitehat = now;
    |
  > |        if (_whitehat.send(amount))
    |        {
    |            FundTransfer(_whitehat, "Whitehat recovery", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(249)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        require(this.balance > 0);
    |
  > |        require(_hackoinToken.balanceOf(targetAddress) >= _participationThreshold);
    |
    |        require(_tenuousToken.balanceOf(targetAddress) >= _hackTokenThreshold);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(268)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        require(_hackoinToken.balanceOf(targetAddress) >= _participationThreshold);
    |
  > |        require(_tenuousToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |        require(_educatedToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |        require(_adeptToken.balanceOf(targetAddress) >= _hackTokenThreshold);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(270)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |
    |        require(_tenuousToken.balanceOf(targetAddress) >= _hackTokenThreshold);
  > |        require(_educatedToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |        require(_adeptToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(271)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        require(_tenuousToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |        require(_educatedToken.balanceOf(targetAddress) >= _hackTokenThreshold);
  > |        require(_adeptToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |
    |        uint minAmount;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(272)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |
    |
  > |        uint256 participationAmount = _hackoinToken.balanceOf(targetAddress);
    |        if(participationAmount > _participationMax)
    |        {
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(289)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _lastHack = now;
    |
  > |        if (targetAddress.send(amount))
    |        {
    |            FundTransfer(targetAddress, "Hack", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(305)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _hackedTenuous = true;
    |
  > |        if(_tenuousToken.balanceOf(targetAddress) == 0) {
    |            _tenuousToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(321)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |
    |        if(_tenuousToken.balanceOf(targetAddress) == 0) {
  > |            _tenuousToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(322)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _hackedEducated = true;
    |
  > |        if(_educatedToken.balanceOf(targetAddress) == 0) {
    |            _educatedToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(337)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |
    |        if(_educatedToken.balanceOf(targetAddress) == 0) {
  > |            _educatedToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(338)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _hackedAdept = true;
    |
  > |        if(_adeptToken.balanceOf(targetAddress) == 0) {
    |            _adeptToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(355)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |
    |        if(_adeptToken.balanceOf(targetAddress) == 0) {
  > |            _adeptToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(356)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |
    |    function kill() onlyOwner {
  > |        _hackoinToken.kill();
    |        _tenuousToken.kill();
    |        _educatedToken.kill();
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(375)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |    function kill() onlyOwner {
    |        _hackoinToken.kill();
  > |        _tenuousToken.kill();
    |        _educatedToken.kill();
    |        _adeptToken.kill();
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(376)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _hackoinToken.kill();
    |        _tenuousToken.kill();
  > |        _educatedToken.kill();
    |        _adeptToken.kill();
    |        mortal.kill();
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(377)

[33mWarning[0m for UnhandledException in contract 'hackethereumIco':
    |        _tenuousToken.kill();
    |        _educatedToken.kill();
  > |        _adeptToken.kill();
    |        mortal.kill();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(378)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _adeptToken = hackoin(adeptTokenContractAddress);
    |
  > |        _hackoinToken.mintToken(msg.sender, _participationMax*2);
    |        _tenuousToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _educatedToken.mintToken(msg.sender, _hackTokenThreshold*2);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |
    |        _hackoinToken.mintToken(msg.sender, _participationMax*2);
  > |        _tenuousToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _educatedToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _adeptToken.mintToken(msg.sender, _hackTokenThreshold*2);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _hackoinToken.mintToken(msg.sender, _participationMax*2);
    |        _tenuousToken.mintToken(msg.sender, _hackTokenThreshold*2);
  > |        _educatedToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _adeptToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _initialised = true;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _tenuousToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _educatedToken.mintToken(msg.sender, _hackTokenThreshold*2);
  > |        _adeptToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _initialised = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _amountRaised += amount;
    |
  > |        _hackoinToken.mintToken(msg.sender, tokenAmount);
    |        FundTransfer(msg.sender, "Ticket Purchase", amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        require(_hackerDecisive == msg.sender);
    |
  > |        require(_hackoinToken.balanceOf(targetAddress) >= _participationMax*2);
    |
    |        require(this.balance > 0);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _lastWhitehat = now;
    |
  > |        if (_whitehat.send(amount))
    |        {
    |            FundTransfer(_whitehat, "Whitehat recovery", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        require(this.balance > 0);
    |
  > |        require(_hackoinToken.balanceOf(targetAddress) >= _participationThreshold);
    |
    |        require(_tenuousToken.balanceOf(targetAddress) >= _hackTokenThreshold);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        require(_hackoinToken.balanceOf(targetAddress) >= _participationThreshold);
    |
  > |        require(_tenuousToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |        require(_educatedToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |        require(_adeptToken.balanceOf(targetAddress) >= _hackTokenThreshold);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(270)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |
    |        require(_tenuousToken.balanceOf(targetAddress) >= _hackTokenThreshold);
  > |        require(_educatedToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |        require(_adeptToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        require(_tenuousToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |        require(_educatedToken.balanceOf(targetAddress) >= _hackTokenThreshold);
  > |        require(_adeptToken.balanceOf(targetAddress) >= _hackTokenThreshold);
    |
    |        uint minAmount;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |
    |
  > |        uint256 participationAmount = _hackoinToken.balanceOf(targetAddress);
    |        if(participationAmount > _participationMax)
    |        {
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _lastHack = now;
    |
  > |        if (targetAddress.send(amount))
    |        {
    |            FundTransfer(targetAddress, "Hack", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(305)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _hackedTenuous = true;
    |
  > |        if(_tenuousToken.balanceOf(targetAddress) == 0) {
    |            _tenuousToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(321)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |
    |        if(_tenuousToken.balanceOf(targetAddress) == 0) {
  > |            _tenuousToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _hackedEducated = true;
    |
  > |        if(_educatedToken.balanceOf(targetAddress) == 0) {
    |            _educatedToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(337)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |
    |        if(_educatedToken.balanceOf(targetAddress) == 0) {
  > |            _educatedToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(338)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _hackedAdept = true;
    |
  > |        if(_adeptToken.balanceOf(targetAddress) == 0) {
    |            _adeptToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(355)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |
    |        if(_adeptToken.balanceOf(targetAddress) == 0) {
  > |            _adeptToken.mintToken(targetAddress, _hackTokenThreshold);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |
    |    function kill() onlyOwner {
  > |        _hackoinToken.kill();
    |        _tenuousToken.kill();
    |        _educatedToken.kill();
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(375)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |    function kill() onlyOwner {
    |        _hackoinToken.kill();
  > |        _tenuousToken.kill();
    |        _educatedToken.kill();
    |        _adeptToken.kill();
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(376)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _hackoinToken.kill();
    |        _tenuousToken.kill();
  > |        _educatedToken.kill();
    |        _adeptToken.kill();
    |        mortal.kill();
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(377)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        _tenuousToken.kill();
    |        _educatedToken.kill();
  > |        _adeptToken.kill();
    |        mortal.kill();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(378)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        require(amount <= this.balance);
    |
  > |        if (_beneficiary.send(amount))
    |        {
    |            FundTransfer(_beneficiary, "Withdrawal", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'hackethereumIco':
    |        require(amount <= this.balance);
    |
  > |        if (targetAddress.send(amount))
    |        {
    |            FundTransfer(targetAddress, "Decisive hack", amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |
    |        _balanceOf[msg.sender] += amount;
  > |        _amountRaised += amount;
    |
    |        _hackoinToken.mintToken(msg.sender, tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        require(this.balance + amount >= this.balance);
    |
  > |        _balanceOf[msg.sender] += amount;
    |        _amountRaised += amount;
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        require(!_initialised);
    |
  > |        _deadline = 1504301337; // Fri, 01 Sep 2017 21:28:57 // now + durationInMinutes * 1 minutes; //1504231337
    |
    |        _timeBetweenWithdrawCalls = 30 minutes;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        _deadline = 1504301337; // Fri, 01 Sep 2017 21:28:57 // now + durationInMinutes * 1 minutes; //1504231337
    |
  > |        _timeBetweenWithdrawCalls = 30 minutes;
    |        _timeBetweenControlFlipCalls = 300 minutes;
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |
    |        _timeBetweenWithdrawCalls = 30 minutes;
  > |        _timeBetweenControlFlipCalls = 300 minutes;
    |
    |        _priceIncrease2 = _deadline - 4 days;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        _timeBetweenControlFlipCalls = 300 minutes;
    |
  > |        _priceIncrease2 = _deadline - 4 days;
    |        _priceIncrease1 = _priceIncrease2 - 6 days;
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |
    |        _priceIncrease2 = _deadline - 4 days;
  > |        _priceIncrease1 = _priceIncrease2 - 6 days;
    |
    |        _lastHack = now;//_deadline + 1 days;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        _priceIncrease1 = _priceIncrease2 - 6 days;
    |
  > |        _lastHack = now;//_deadline + 1 days;
    |        _lastWhitehat = now;//_deadline + 1 days;
    |        _lastControlFlip = now;//_deadline + 1 days;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |
    |        _lastHack = now;//_deadline + 1 days;
  > |        _lastWhitehat = now;//_deadline + 1 days;
    |        _lastControlFlip = now;//_deadline + 1 days;
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        _lastHack = now;//_deadline + 1 days;
    |        _lastWhitehat = now;//_deadline + 1 days;
  > |        _lastControlFlip = now;//_deadline + 1 days;
    |
    |        _initialPrice = 1;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        _lastControlFlip = now;//_deadline + 1 days;
    |
  > |        _initialPrice = 1;
    |
    |        address tokenContractAddress = new hackoin("Hackoin", "HK");
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |
    |        address tokenContractAddress = new hackoin("Hackoin", "HK");
  > |        _hackoinToken = hackoin(tokenContractAddress);
    |
    |        address tenuousTokenContractAddress = new hackoin("Hackoin_Tenuous", "HKT");
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        address adeptTokenContractAddress = new hackoin("Hackoin_Adept", "HKA");
    |
  > |        _tenuousToken = hackoin(tenuousTokenContractAddress);
    |        _educatedToken = hackoin(educatedTokenContractAddress);
    |        _adeptToken = hackoin(adeptTokenContractAddress);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |
    |        _tenuousToken = hackoin(tenuousTokenContractAddress);
  > |        _educatedToken = hackoin(educatedTokenContractAddress);
    |        _adeptToken = hackoin(adeptTokenContractAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        _tenuousToken = hackoin(tenuousTokenContractAddress);
    |        _educatedToken = hackoin(educatedTokenContractAddress);
  > |        _adeptToken = hackoin(adeptTokenContractAddress);
    |
    |        _hackoinToken.mintToken(msg.sender, _participationMax*2);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        _educatedToken.mintToken(msg.sender, _hackTokenThreshold*2);
    |        _adeptToken.mintToken(msg.sender, _hackTokenThreshold*2);
  > |        _initialised = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |
    |    function adjustTiming(uint256 timeBetweenWithdrawMinutes, uint256 timeBetweenFlipMinutes) onlyOwner {
  > |        _timeBetweenWithdrawCalls = timeBetweenWithdrawMinutes * 1 minutes;
    |        _timeBetweenControlFlipCalls = timeBetweenFlipMinutes * 1 minutes;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |    function adjustTiming(uint256 timeBetweenWithdrawMinutes, uint256 timeBetweenFlipMinutes) onlyOwner {
    |        _timeBetweenWithdrawCalls = timeBetweenWithdrawMinutes * 1 minutes;
  > |        _timeBetweenControlFlipCalls = timeBetweenFlipMinutes * 1 minutes;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        }
    |
  > |        _lastWhitehat = now;
    |
    |        if (_whitehat.send(amount))
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        }
    |
  > |        _lastHack = now;
    |
    |        if (targetAddress.send(amount))
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        }
    |
  > |        _hackedTenuous = true;
    |
    |        if(_tenuousToken.balanceOf(targetAddress) == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        }
    |
  > |        _hackedEducated = true;
    |
    |        if(_educatedToken.balanceOf(targetAddress) == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        if(!_hackedAdept) {
    |            require(_lastControlFlip + _timeBetweenControlFlipCalls < now);
  > |            _lastControlFlip = now;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(349)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        }
    |
  > |        _whitehatActive = false;
    |        _hackedAdept = true;
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |
    |        _whitehatActive = false;
  > |        _hackedAdept = true;
    |
    |        if(_adeptToken.balanceOf(targetAddress) == 0) {
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        require(_whitehat == msg.sender);
    |        require(_lastControlFlip + _timeBetweenControlFlipCalls < now);
  > |        _hackedTenuous = false;
    |        _hackedEducated = false;
    |        _hackedAdept = false;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        require(_lastControlFlip + _timeBetweenControlFlipCalls < now);
    |        _hackedTenuous = false;
  > |        _hackedEducated = false;
    |        _hackedAdept = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        _hackedTenuous = false;
    |        _hackedEducated = false;
  > |        _hackedAdept = false;
    |
    |        if(!_whitehatActive){
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |
    |        if(!_whitehatActive){
  > |            _lastControlFlip = now;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'hackethereumIco':
    |        }
    |
  > |        _whitehatActive = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(371)

[33mWarning[0m for LockedEther in contract 'hackoin':
    |}
    |
  > |contract hackoin is ERC20, owned, mortal {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(403)

[31mViolation[0m for UnrestrictedWrite in contract 'hackoin':
    |
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(428)

[31mViolation[0m for UnrestrictedWrite in contract 'hackoin':
    |        require(balances[_to] + _amount > balances[_to]);
    |
  > |        balances[_from] -= _amount;
    |        allowed[_from][msg.sender] -= _amount;
    |        balances[_to] += _amount;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(442)

[31mViolation[0m for UnrestrictedWrite in contract 'hackoin':
    |        balances[_from] -= _amount;
    |        allowed[_from][msg.sender] -= _amount;
  > |        balances[_to] += _amount;
    |        Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'hackoin':
    |        require(balances[_to] + _value >= balances[_to]);
    |
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(427)

[33mWarning[0m for UnrestrictedWrite in contract 'hackoin':
    |
    |        balances[_from] -= _amount;
  > |        allowed[_from][msg.sender] -= _amount;
    |        balances[_to] += _amount;
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'hackoin':
    |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        require(msg.data.length == 32*2+4);
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(469)

[33mWarning[0m for UnrestrictedWrite in contract 'hackoin':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'hackoin':
    |        require(msg.data.length == 32*2+4);
    |
  > |        balances[target] += mintedAmount;
    |        _totalSupply += mintedAmount;
    |        Transfer(0, _owner, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'hackoin':
    |
    |        balances[target] += mintedAmount;
  > |        _totalSupply += mintedAmount;
    |        Transfer(0, _owner, mintedAmount);
    |        Transfer(_owner, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(453)

[33mWarning[0m for LockedEther in contract 'mortal':
    |}
    |
  > |contract mortal is owned {
    |    function mortal() { 
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'mortal':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(36)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |    address public _owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        _owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public _owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd5413b99749d50c415df34eb782c1a5db8df02ce.sol(36)


