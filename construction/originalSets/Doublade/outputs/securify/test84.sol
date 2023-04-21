Processing contract: /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol:SHA3_512
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol:TeikhosBounty
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SHA3_512':
  > |contract SHA3_512 {
    |   function hash(uint64[8]) pure public returns(uint32[16]) {}
    |}
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(1)

[31mViolation[0m for LockedEther in contract 'TeikhosBounty':
    |}
    |
  > |contract TeikhosBounty {
    |
    |    address public bipedaljoe = 0x4c5D24A7Ca972aeA90Cc040DA6770A13Fc7D4d9A; // In case no one submits the correct solution, the bounty is sent to me
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(5)

[33mWarning[0m for UnhandledException in contract 'TeikhosBounty':
    |        if (v < 27) v += 27;
    |
  > |        if(ecrecover(isSolved.msgHash, v, r, s) == msg.sender) {
    |            if(winner.timestamp == 0 || commitment[msg.sender].timestamp < winner.timestamp) {
    |                winner.winner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(70)

[33mWarning[0m for UnhandledException in contract 'TeikhosBounty':
    |
    |        // The value v is not known, try both 27 and 28
  > |        if(ecrecover(msgHash, 27, r, s) == signer || ecrecover(msgHash, 28, r, s) == signer ) {
    |            isSolved.timestamp = now;
    |            isSolved.publicKey = _publicKey; 
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(112)

[33mWarning[0m for UnhandledException in contract 'TeikhosBounty':
    |        }
    |
  > |        uint32[16] memory output = sha3_512.hash(input);
    |        
    |        bytes memory toBytes = new bytes(64);
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TeikhosBounty':
    |        if (v < 27) v += 27;
    |
  > |        if(ecrecover(isSolved.msgHash, v, r, s) == msg.sender) {
    |            if(winner.timestamp == 0 || commitment[msg.sender].timestamp < winner.timestamp) {
    |                winner.winner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(70)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TeikhosBounty':
    |
    |        // The value v is not known, try both 27 and 28
  > |        if(ecrecover(msgHash, 27, r, s) == signer || ecrecover(msgHash, 28, r, s) == signer ) {
    |            isSolved.timestamp = now;
    |            isSolved.publicKey = _publicKey; 
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TeikhosBounty':
    |        }
    |
  > |        uint32[16] memory output = sha3_512.hash(input);
    |        
    |        bytes memory toBytes = new bytes(64);
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'TeikhosBounty':
    |}
    |
  > |contract TeikhosBounty {
    |
    |    address public bipedaljoe = 0x4c5D24A7Ca972aeA90Cc040DA6770A13Fc7D4d9A; // In case no one submits the correct solution, the bounty is sent to me
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'TeikhosBounty':
    |        require(commitment[msg.sender].timestamp == 0);
    |        commitment[msg.sender].signature = _signature;
  > |        commitment[msg.sender].timestamp = now;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'TeikhosBounty':
    |        if(ecrecover(isSolved.msgHash, v, r, s) == msg.sender) {
    |            if(winner.timestamp == 0 || commitment[msg.sender].timestamp < winner.timestamp) {
  > |                winner.winner = msg.sender;
    |                winner.timestamp = commitment[msg.sender].timestamp;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'TeikhosBounty':
    |            if(winner.timestamp == 0 || commitment[msg.sender].timestamp < winner.timestamp) {
    |                winner.winner = msg.sender;
  > |                winner.timestamp = commitment[msg.sender].timestamp;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'TeikhosBounty':
    |            }
    |        }
  > |        delete commitment[msg.sender];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x05dab93a76f33fdb225e0a05cafbdd41612b88b6.sol(76)


