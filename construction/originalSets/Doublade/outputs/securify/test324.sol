Processing contract: /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol:XCPlugin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol:XCPluginInterface
[31mViolation[0m for LockedEther in contract 'XCPlugin':
    |}
    |
  > |contract XCPlugin is XCPluginInterface {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(165)

[33mWarning[0m for UnhandledException in contract 'XCPlugin':
    |
    |    function hashMsg(bytes32 fromPlatform, address fromAccount, bytes32 toPlatform, address toAccount, uint value, bytes32 tokenSymbol, string txid,string version) internal pure returns (bytes32) {
  > |        return sha256(bytes32ToStr(fromPlatform), ":0x", uintToStr(uint160(fromAccount), 16), ":", bytes32ToStr(toPlatform), ":0x", uintToStr(uint160(toAccount), 16), ":", uintToStr(value, 10), ":", bytes32ToStr(tokenSymbol), ":", txid, ":", version);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(420)

[33mWarning[0m for UnhandledException in contract 'XCPlugin':
    |            v += 27;
    |        }
  > |        return ecrecover(hash, v, r, s);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(502)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XCPlugin':
    |
    |    function hashMsg(bytes32 fromPlatform, address fromAccount, bytes32 toPlatform, address toAccount, uint value, bytes32 tokenSymbol, string txid,string version) internal pure returns (bytes32) {
  > |        return sha256(bytes32ToStr(fromPlatform), ":0x", uintToStr(uint160(fromAccount), 16), ":", bytes32ToStr(toPlatform), ":0x", uintToStr(uint160(toAccount), 16), ":", uintToStr(value, 10), ":", bytes32ToStr(tokenSymbol), ":", txid, ":", version);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(420)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XCPlugin':
    |            v += 27;
    |        }
  > |        return ecrecover(hash, v, r, s);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(502)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |
    |/**
  > | * XC Plugin Contract Interface.
    | */
    |interface XCPluginInterface {
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |}
    |
  > |contract XCPlugin is XCPluginInterface {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |            if (callers[i] == caller) {
    |                if (i != callers.length - 1 ) {
  > |                    callers[i] = callers[callers.length - 1];
    |                }
    |                callers.length--;
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(298)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |            if (publicKeys[i] == publicKey) {
    |                if (i != publicKeys.length - 1 ) {
  > |                    publicKeys[i] = publicKeys[publicKeys.length - 1];
    |                }
    |                publicKeys.length--;
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(344)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |        Proposal storage proposal = platform.proposals[txid];
    |        if (proposal.value == 0) {
  > |            proposal.fromAccount = fromAccount;
    |            proposal.toAccount = toAccount;
    |            proposal.value = value;
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(370)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |        if (proposal.value == 0) {
    |            proposal.fromAccount = fromAccount;
  > |            proposal.toAccount = toAccount;
    |            proposal.value = value;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(371)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |            proposal.fromAccount = fromAccount;
    |            proposal.toAccount = toAccount;
  > |            proposal.value = value;
    |        } else {
    |            require(proposal.fromAccount == fromAccount && proposal.toAccount == toAccount && proposal.value == value);
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(372)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |
    |    function deleteProposal(string txid) onlyAdmin external {
  > |        delete platform.proposals[txid];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(410)

[31mViolation[0m for UnrestrictedWrite in contract 'XCPlugin':
    |            }
    |        }
  > |        voters.push(publicKey);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |}
    |
  > |contract XCPlugin is XCPluginInterface {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |    function start() onlyAdmin external {
    |        if (!admin.status) {
  > |            admin.status = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |    function stop() onlyAdmin external {
    |        if (admin.status) {
  > |            admin.status = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |    function setAdmin(address account) onlyAdmin nonzeroAddress(account) external {
    |        if (admin.account != account) {
  > |            admin.account = account;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |        require(weight > 0);
    |        if (platform.weight != weight) {
  > |            platform.weight = weight;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'XCPlugin':
    |
    |    function deleteProposal(string txid) onlyAdmin external {
  > |        delete platform.proposals[txid];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x15782cc68d841416f73e8f352f27cc1bc5e76e11.sol(410)


