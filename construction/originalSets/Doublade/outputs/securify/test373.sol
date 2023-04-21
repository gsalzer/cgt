Processing contract: /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol:LedgerRandomProofVerifier
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'LedgerRandomProofVerifier':
    |}
    |
  > |contract LedgerRandomProofVerifier is usingOraclize, Owned {
    |    
    |    mapping(address=>bool) contractsWhitelist;
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(1033)

[31mViolation[0m for UnhandledException in contract 'LedgerRandomProofVerifier':
    |            // NOTE: we can reuse the request memory because we deal with
    |            //       the return code
  > |            ret := call(3000, 1, 0, size, 128, size, 32)
    |            addr := mload(size)
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(969)

[33mWarning[0m for UnhandledException in contract 'LedgerRandomProofVerifier':
    |        bytes memory keyhash = new bytes(32);
    |        copyBytes(proof, ledgerProofLength, 32, keyhash, 0);
  > |        checkok = (sha3(keyhash) == sha3(sha256(context_name, queryId)));
    |        if (checkok == false) return false;
    |        
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(880)

[33mWarning[0m for UnhandledException in contract 'LedgerRandomProofVerifier':
    |        
    |        // Step 3: we assume sig1 is valid (it will be verified during step 5) and we verify if 'result' is the prefix of sha256(sig1)
  > |        checkok = matchBytes32Prefix(sha256(sig1), result);
    |        if (checkok == false) return false;
    |        
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(888)

[33mWarning[0m for UnhandledException in contract 'LedgerRandomProofVerifier':
    |        copyBytes(proof, sig2offset-64, 64, sessionPubkey, 0);
    |        
  > |        bytes32 sessionPubkeyHash = sha256(sessionPubkey);
    |        if (oraclize_randomDS_args[queryId] == sha3(commitmentSlice1, sessionPubkeyHash)){ //unonce, nbytes and sessionKeyHash match
    |            delete oraclize_randomDS_args[queryId];
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(901)

[33mWarning[0m for UnhandledException in contract 'LedgerRandomProofVerifier':
    |        bytes memory tosign1 = new bytes(32+8+1+32);
    |        copyBytes(proof, ledgerProofLength, 32+8+1+32, tosign1, 0);
  > |        checkok = verifySig(sha256(tosign1), sig1, sessionPubkey);
    |        if (checkok == false) return false;
    |        
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(910)

[33mWarning[0m for UnhandledException in contract 'LedgerRandomProofVerifier':
    |        copyBytes(proof, sig2offset-65, 65, tosign2, 1);
    |        copyBytes(expectedCodeHash, 0, 32, tosign2, 1+65);
  > |        sigok = verifySig(sha256(tosign2), sig2, appkey1_pubkey);
    |        
    |        if (sigok == false) return false;
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(1077)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerRandomProofVerifier':
    |        bytes memory keyhash = new bytes(32);
    |        copyBytes(proof, ledgerProofLength, 32, keyhash, 0);
  > |        checkok = (sha3(keyhash) == sha3(sha256(context_name, queryId)));
    |        if (checkok == false) return false;
    |        
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(880)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerRandomProofVerifier':
    |        
    |        // Step 3: we assume sig1 is valid (it will be verified during step 5) and we verify if 'result' is the prefix of sha256(sig1)
  > |        checkok = matchBytes32Prefix(sha256(sig1), result);
    |        if (checkok == false) return false;
    |        
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(888)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerRandomProofVerifier':
    |        copyBytes(proof, sig2offset-64, 64, sessionPubkey, 0);
    |        
  > |        bytes32 sessionPubkeyHash = sha256(sessionPubkey);
    |        if (oraclize_randomDS_args[queryId] == sha3(commitmentSlice1, sessionPubkeyHash)){ //unonce, nbytes and sessionKeyHash match
    |            delete oraclize_randomDS_args[queryId];
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(901)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerRandomProofVerifier':
    |        bytes memory tosign1 = new bytes(32+8+1+32);
    |        copyBytes(proof, ledgerProofLength, 32+8+1+32, tosign1, 0);
  > |        checkok = verifySig(sha256(tosign1), sig1, sessionPubkey);
    |        if (checkok == false) return false;
    |        
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(910)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerRandomProofVerifier':
    |            // NOTE: we can reuse the request memory because we deal with
    |            //       the return code
  > |            ret := call(3000, 1, 0, size, 128, size, 32)
    |            addr := mload(size)
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(969)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedgerRandomProofVerifier':
    |        copyBytes(proof, sig2offset-65, 65, tosign2, 1);
    |        copyBytes(expectedCodeHash, 0, 32, tosign2, 1+65);
  > |        sigok = verifySig(sha256(tosign2), sig2, appkey1_pubkey);
    |        
    |        if (sigok == false) return false;
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(1077)

[33mWarning[0m for UnrestrictedWrite in contract 'LedgerRandomProofVerifier':
    |    
    |    function setWhiteListed(address _address, bool _toggle) onlyOwner {
  > |        contractsWhitelist[_address] = _toggle;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(1049)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// </ORACLIZE_API>
    |
  > |contract Owned {
    |    address public owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(1020)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    
    |    modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(1021)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    function getAddress() returns (address _addr);
    |}
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0x1872b33bb33e372d6f039a8b6af2e1be228bda23.sol(54)


