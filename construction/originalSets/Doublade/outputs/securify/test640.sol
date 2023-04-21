Processing contract: /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol:XC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol:XCInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol:XCPlugin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol:XCPluginInterface
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(252)

[33mWarning[0m for DAO in contract 'XC':
    |        require(xcPlugin.commitProposal(txid));
    |        lockBalance = SafeMath.sub(lockBalance, value);
  > |        emit Unlock(txid, xcPlugin.getTrustPlatform(), fromAccount, bytes32(value), xcPlugin.getTokenSymbol());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(780)

[33mWarning[0m for DAO in contract 'XC':
    |        uint balance = token.balanceOf(this);
    |        require(SafeMath.sub(balance, lockBalance) >= value);
  > |        bool success = token.transfer(account, value);
    |        require(success);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(787)

[33mWarning[0m for LockedEther in contract 'XC':
    |}
    |
  > |contract XC is XCInterface {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(661)

[31mViolation[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function unlock(string txid, address fromAccount, address toAccount, uint value) nonzeroAddress(toAccount) external {
    |        require(admin.status == 1 || admin.status == 3);
    |        require(xcPlugin.getStatus());
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(767)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    * @dev Subtracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
    |    */
  > |    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    * @dev Adds two numbers, throws on overflow.
    |    */
  > |    function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    Admin private admin;
    |
  > |    uint public lockBalance;
    |
    |    Token private token;
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(677)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function setStatus(uint8 status) onlyAdmin external {
    |        require(status <= 3);
    |        if (admin.status != status) {
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(710)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function getStatus() external view returns (uint8) {
    |        return admin.status;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(717)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function getPlatformName() external view returns (bytes32) {
    |        return admin.platformName;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(721)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function setAdmin(address account) onlyAdmin nonzeroAddress(account) external {
    |        if (admin.account != account) {
    |            admin.account = account;
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(725)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function getAdmin() external view returns (address) {
    |        return admin.account;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(731)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function setToken(address account) onlyAdmin nonzeroAddress(account) external {
    |        if (token != account) {
    |            token = Token(account);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(735)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function getToken() external view returns (address) {
    |        return token;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(741)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function setXCPlugin(address account) onlyAdmin nonzeroAddress(account) external {
    |        if (xcPlugin != account) {
    |            xcPlugin = XCPlugin(account);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(745)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function getXCPlugin() external view returns (address) {
    |        return xcPlugin;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(751)

[33mWarning[0m for MissingInputValidation in contract 'XC':
    |    }
    |
  > |    function lock(address toAccount, uint value) nonzeroAddress(toAccount) external {
    |        require(admin.status == 2 || admin.status == 3);
    |        require(xcPlugin.getStatus());
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(755)

[33mWarning[0m for UnhandledException in contract 'XC':
    |    function lock(address toAccount, uint value) nonzeroAddress(toAccount) external {
    |        require(admin.status == 2 || admin.status == 3);
  > |        require(xcPlugin.getStatus());
    |        require(value > 0);
    |        uint allowance = token.allowance(msg.sender, this);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(757)

[33mWarning[0m for UnhandledException in contract 'XC':
    |        require(xcPlugin.getStatus());
    |        require(value > 0);
  > |        uint allowance = token.allowance(msg.sender, this);
    |        require(allowance >= value);
    |        bool success = token.transferFrom(msg.sender, this, value);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(759)

[33mWarning[0m for UnhandledException in contract 'XC':
    |        uint allowance = token.allowance(msg.sender, this);
    |        require(allowance >= value);
  > |        bool success = token.transferFrom(msg.sender, this, value);
    |        require(success);
    |        lockBalance = SafeMath.add(lockBalance, value);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(761)

[33mWarning[0m for UnhandledException in contract 'XC':
    |        require(success);
    |        lockBalance = SafeMath.add(lockBalance, value);
  > |        emit Lock(xcPlugin.getTrustPlatform(), toAccount, bytes32(value), xcPlugin.getTokenSymbol());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(764)

[33mWarning[0m for UnhandledException in contract 'XC':
    |    function unlock(string txid, address fromAccount, address toAccount, uint value) nonzeroAddress(toAccount) external {
    |        require(admin.status == 1 || admin.status == 3);
  > |        require(xcPlugin.getStatus());
    |        require(value > 0);
    |        bool complete;
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(769)

[33mWarning[0m for UnhandledException in contract 'XC':
    |        bool complete;
    |        bool verify;
  > |        (complete, verify) = xcPlugin.verifyProposal(fromAccount, toAccount, value, txid);
    |        require(verify && !complete);
    |        uint balance = token.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(773)

[33mWarning[0m for UnhandledException in contract 'XC':
    |        (complete, verify) = xcPlugin.verifyProposal(fromAccount, toAccount, value, txid);
    |        require(verify && !complete);
  > |        uint balance = token.balanceOf(this);
    |        require(balance >= value);
    |        require(token.transfer(toAccount, value));
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(775)

[33mWarning[0m for UnhandledException in contract 'XC':
    |        uint balance = token.balanceOf(this);
    |        require(balance >= value);
  > |        require(token.transfer(toAccount, value));
    |        require(xcPlugin.commitProposal(txid));
    |        lockBalance = SafeMath.sub(lockBalance, value);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(777)

[33mWarning[0m for UnhandledException in contract 'XC':
    |        require(balance >= value);
    |        require(token.transfer(toAccount, value));
  > |        require(xcPlugin.commitProposal(txid));
    |        lockBalance = SafeMath.sub(lockBalance, value);
    |        emit Unlock(txid, xcPlugin.getTrustPlatform(), fromAccount, bytes32(value), xcPlugin.getTokenSymbol());
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(778)

[33mWarning[0m for UnhandledException in contract 'XC':
    |        require(xcPlugin.commitProposal(txid));
    |        lockBalance = SafeMath.sub(lockBalance, value);
  > |        emit Unlock(txid, xcPlugin.getTrustPlatform(), fromAccount, bytes32(value), xcPlugin.getTokenSymbol());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(780)

[33mWarning[0m for UnhandledException in contract 'XC':
    |    function withdraw(address account, uint value) onlyAdmin nonzeroAddress(account) external {
    |        require(value > 0);
  > |        uint balance = token.balanceOf(this);
    |        require(SafeMath.sub(balance, lockBalance) >= value);
    |        bool success = token.transfer(account, value);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(785)

[33mWarning[0m for UnhandledException in contract 'XC':
    |        uint balance = token.balanceOf(this);
    |        require(SafeMath.sub(balance, lockBalance) >= value);
  > |        bool success = token.transfer(account, value);
    |        require(success);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(787)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XC':
    |    function lock(address toAccount, uint value) nonzeroAddress(toAccount) external {
    |        require(admin.status == 2 || admin.status == 3);
  > |        require(xcPlugin.getStatus());
    |        require(value > 0);
    |        uint allowance = token.allowance(msg.sender, this);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(757)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XC':
    |        require(xcPlugin.getStatus());
    |        require(value > 0);
  > |        uint allowance = token.allowance(msg.sender, this);
    |        require(allowance >= value);
    |        bool success = token.transferFrom(msg.sender, this, value);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(759)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XC':
    |        uint allowance = token.allowance(msg.sender, this);
    |        require(allowance >= value);
  > |        bool success = token.transferFrom(msg.sender, this, value);
    |        require(success);
    |        lockBalance = SafeMath.add(lockBalance, value);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(761)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XC':
    |        require(success);
    |        lockBalance = SafeMath.add(lockBalance, value);
  > |        emit Lock(xcPlugin.getTrustPlatform(), toAccount, bytes32(value), xcPlugin.getTokenSymbol());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(764)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XC':
    |    function unlock(string txid, address fromAccount, address toAccount, uint value) nonzeroAddress(toAccount) external {
    |        require(admin.status == 1 || admin.status == 3);
  > |        require(xcPlugin.getStatus());
    |        require(value > 0);
    |        bool complete;
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(769)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XC':
    |        bool complete;
    |        bool verify;
  > |        (complete, verify) = xcPlugin.verifyProposal(fromAccount, toAccount, value, txid);
    |        require(verify && !complete);
    |        uint balance = token.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(773)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XC':
    |        (complete, verify) = xcPlugin.verifyProposal(fromAccount, toAccount, value, txid);
    |        require(verify && !complete);
  > |        uint balance = token.balanceOf(this);
    |        require(balance >= value);
    |        require(token.transfer(toAccount, value));
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(775)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XC':
    |        uint balance = token.balanceOf(this);
    |        require(balance >= value);
  > |        require(token.transfer(toAccount, value));
    |        require(xcPlugin.commitProposal(txid));
    |        lockBalance = SafeMath.sub(lockBalance, value);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(777)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XC':
    |        require(balance >= value);
    |        require(token.transfer(toAccount, value));
  > |        require(xcPlugin.commitProposal(txid));
    |        lockBalance = SafeMath.sub(lockBalance, value);
    |        emit Unlock(txid, xcPlugin.getTrustPlatform(), fromAccount, bytes32(value), xcPlugin.getTokenSymbol());
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(778)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XC':
    |    function withdraw(address account, uint value) onlyAdmin nonzeroAddress(account) external {
    |        require(value > 0);
  > |        uint balance = token.balanceOf(this);
    |        require(SafeMath.sub(balance, lockBalance) >= value);
    |        bool success = token.transfer(account, value);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(785)

[31mViolation[0m for UnrestrictedWrite in contract 'XC':
    |        bool success = token.transferFrom(msg.sender, this, value);
    |        require(success);
  > |        lockBalance = SafeMath.add(lockBalance, value);
    |        emit Lock(xcPlugin.getTrustPlatform(), toAccount, bytes32(value), xcPlugin.getTokenSymbol());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(763)

[31mViolation[0m for UnrestrictedWrite in contract 'XC':
    |        require(token.transfer(toAccount, value));
    |        require(xcPlugin.commitProposal(txid));
  > |        lockBalance = SafeMath.sub(lockBalance, value);
    |        emit Unlock(txid, xcPlugin.getTrustPlatform(), fromAccount, bytes32(value), xcPlugin.getTokenSymbol());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(779)

[33mWarning[0m for UnrestrictedWrite in contract 'XC':
    |        require(status <= 3);
    |        if (admin.status != status) {
  > |            admin.status = status;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(713)

[33mWarning[0m for UnrestrictedWrite in contract 'XC':
    |    function setAdmin(address account) onlyAdmin nonzeroAddress(account) external {
    |        if (admin.account != account) {
  > |            admin.account = account;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(727)

[33mWarning[0m for UnrestrictedWrite in contract 'XC':
    |    function setToken(address account) onlyAdmin nonzeroAddress(account) external {
    |        if (token != account) {
  > |            token = Token(account);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(737)

[33mWarning[0m for UnrestrictedWrite in contract 'XC':
    |    function setXCPlugin(address account) onlyAdmin nonzeroAddress(account) external {
    |        if (xcPlugin != account) {
  > |            xcPlugin = XCPlugin(account);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(747)

[31mViolation[0m for LockedEther in contract 'XCPlugin':
    |}
    |
  > |contract XCPlugin is XCPluginInterface {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(305)

[33mWarning[0m for UnhandledException in contract 'XCPlugin':
    |
    |    function hashMsg(bytes32 fromPlatform, address fromAccount, bytes32 toPlatform, address toAccount, uint value, bytes32 tokenSymbol, string txid,string version) internal pure returns (bytes32) {
  > |        return sha256(bytes32ToStr(fromPlatform), ":0x", uintToStr(uint160(fromAccount), 16), ":", bytes32ToStr(toPlatform), ":0x", uintToStr(uint160(toAccount), 16), ":", uintToStr(value, 10), ":", bytes32ToStr(tokenSymbol), ":", txid, ":", version);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(560)

[33mWarning[0m for UnhandledException in contract 'XCPlugin':
    |            v += 27;
    |        }
  > |        return ecrecover(hash, v, r, s);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(642)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XCPlugin':
    |
    |    function hashMsg(bytes32 fromPlatform, address fromAccount, bytes32 toPlatform, address toAccount, uint value, bytes32 tokenSymbol, string txid,string version) internal pure returns (bytes32) {
  > |        return sha256(bytes32ToStr(fromPlatform), ":0x", uintToStr(uint160(fromAccount), 16), ":", bytes32ToStr(toPlatform), ":0x", uintToStr(uint160(toAccount), 16), ":", uintToStr(value, 10), ":", bytes32ToStr(tokenSymbol), ":", txid, ":", version);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(560)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XCPlugin':
    |            v += 27;
    |        }
  > |        return ecrecover(hash, v, r, s);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(642)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |
    |/**
  > | * XC Contract Interface.
    | */
    |interface XCInterface {
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |}
    |
  > |contract XCPlugin is XCPluginInterface {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |            if (callers[i] == caller) {
    |                if (i != callers.length - 1 ) {
  > |                    callers[i] = callers[callers.length - 1];
    |                }
    |                callers.length--;
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(438)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |            if (publicKeys[i] == publicKey) {
    |                if (i != publicKeys.length - 1 ) {
  > |                    publicKeys[i] = publicKeys[publicKeys.length - 1];
    |                }
    |                publicKeys.length--;
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(484)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |        Proposal storage proposal = platform.proposals[txid];
    |        if (proposal.value == 0) {
  > |            proposal.fromAccount = fromAccount;
    |            proposal.toAccount = toAccount;
    |            proposal.value = value;
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(510)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |        if (proposal.value == 0) {
    |            proposal.fromAccount = fromAccount;
  > |            proposal.toAccount = toAccount;
    |            proposal.value = value;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(511)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |            proposal.fromAccount = fromAccount;
    |            proposal.toAccount = toAccount;
  > |            proposal.value = value;
    |        } else {
    |            require(proposal.fromAccount == fromAccount && proposal.toAccount == toAccount && proposal.value == value);
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(512)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |
    |    function deleteProposal(string txid) onlyAdmin external {
  > |        delete platform.proposals[txid];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(550)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |            }
    |        }
  > |        voters.push(publicKey);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |}
    |
  > |contract XCPlugin is XCPluginInterface {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |    function start() onlyAdmin external {
    |        if (!admin.status) {
  > |            admin.status = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |    function stop() onlyAdmin external {
    |        if (admin.status) {
  > |            admin.status = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |    function setAdmin(address account) onlyAdmin nonzeroAddress(account) external {
    |        if (admin.account != account) {
  > |            admin.account = account;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |        require(weight > 0);
    |        if (platform.weight != weight) {
  > |            platform.weight = weight;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |
    |    function deleteProposal(string txid) onlyAdmin external {
  > |        delete platform.proposals[txid];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x28f1135e43e61ebf303c8f1f9beef4f6a00dcb34.sol(550)


