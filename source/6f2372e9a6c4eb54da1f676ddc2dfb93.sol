pragma solidity ^0.4.1;
contract DumbPool {
    // Data structure per user
    struct UserData {
        uint    bitcoinPublicKey;
        uint    numPendingShares;
        uint    pendingSharesMerkle;
        uint    numVerifiedUnpaidShares;
        uint    lastVerifiedTimeStamp;
        bool    verificationCompleted;
    }
    
    struct PaymentData {
        mapping(address=>uint) requestedAmounts;
        uint                   totalSum;
        bytes32[]              coinbaseOutputs;
        mapping(address=>uint) userOutputIndexAndSum; // 0 = invalid
                                                      // 128 bits index
                                                      // 128 bits sum
    }
    
    uint[] foundedBlocksTimestamps;
    mapping(uint=>PaymentData) paymentPerFoundBlock;
    mapping(address=>UserData) userData;
    
    uint blockDelayForPaymentRequest = 20;
    uint nextAvailPaymentBlock = 0;

    
    function DumbPool() { 
    	foundedBlocksTimestamps.length = 2;
    	foundedBlocksTimestamps[0] = 0;
    	foundedBlocksTimestamps[1] = 5;	
    }

    event DebugError( string msg );

    function reportError( string msg ) internal constant returns(bool){
        DebugError(msg);
        return false;
    }
    
    function register( uint _bitcoinPublicKey ) {
        UserData data = userData[ msg.sender ];
        data.verificationCompleted = true;
        data.bitcoinPublicKey = _bitcoinPublicKey;
    }
    
    function constructCoinbaseTx( uint blockNumber, uint amount ) returns(bool) { // TODO make internal
        if( blockNumber < nextAvailPaymentBlock ) blockNumber = nextAvailPaymentBlock;
        else nextAvailPaymentBlock = blockNumber;
        PaymentData paymentData = paymentPerFoundBlock[blockNumber];
        if( amount + paymentData.totalSum > 10000 ) {// TODO replace with real value
            nextAvailPaymentBlock++;
            paymentData = paymentPerFoundBlock[nextAvailPaymentBlock];
        }
        
        uint userIndexAndSum = paymentData.userOutputIndexAndSum[msg.sender];
        uint userIndex = userIndexAndSum / (2 ** 128);
        uint userSum   = userIndexAndSum & (2**128 - 1);
        if( userSum == 0 ) {
            userIndex = paymentData.coinbaseOutputs.length;
            paymentData.coinbaseOutputs.length += 2;
        }
        
        userSum += amount;

        // construct tx output
        uint word0 = 0x00;

        // 8 bytes amount - todo should be in satoshi
        word0 = userSum & 0xFFFFFFFFFFFFFFFF;

        /*        
        uint index;
        for( index = 0 ; index < 8 ; index++ ) {
            paymentData.coinbaseOutputs.push(byte(actualPayment & 0xFF));
            actualPayment = actualPayment / 256;
        }*/

        /*        
        // size of script
        paymentData.coinbaseOutputs.push(byte(0x19));
        
        // script
        uint publicKeyHash = userData[ msg.sender ].bitcoinPublicKey;
        paymentData.coinbaseOutputs.push(byte(0x76)); // OP_DUP
        paymentData.coinbaseOutputs.push(byte(0xa9)); // OP_HASH160
        paymentData.coinbaseOutputs.push(byte(0x13)); // Push 20 bytes as data
        */
        word0 = word0 | (0x1976a913) * (2 ** 64);
        
        /*
        for( index = 0 ; index < 20 ; index++ ) {
            paymentData.coinbaseOutputs.push(byte(publicKeyHash & 0xFF));
            publicKeyHash = publicKeyHash / 256;
        }*/
        uint publicKeyHash = userData[ msg.sender ].bitcoinPublicKey;        
        word0 = word0 | ( publicKeyHash & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ) * (2 ** 96);
        paymentData.coinbaseOutputs[userIndex] = bytes32(word0);

        /*        
        paymentData.coinbaseOutputs.push(byte(0x88)); // OP_EQUALVERIFY
        paymentData.coinbaseOutputs.push(byte(0xac)); // OP_CHECKSIG
        */

        uint word1 = 0x88ac;
        paymentData.coinbaseOutputs[userIndex + 1] = bytes32(word1);

        paymentData.totalSum += amount;
        paymentData.userOutputIndexAndSum[msg.sender] = userSum | (userIndex * 2**128);

        reportError("constructCoinbaseTx ok");

        return true;
    }

    

    
    function submitShares( uint _sharesMerkle, uint _numShares ) {
        UserData data = userData[ msg.sender ];
        if( ! data.verificationCompleted ) throw;
        data.numPendingShares = _numShares;
        data.pendingSharesMerkle = _sharesMerkle;
        data.verificationCompleted = false;
    }
        
    
    function hash( uint x, uint y ) internal constant returns(uint) {
        // 16 bytes hash
        return uint(sha3(x,y)) & ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }
    
    function nodeMinTimeStamp( uint node ) internal constant returns(uint) {
        return node & 0xFFFFFFFF;
    }

    function nodeMaxTimeStamp( uint node ) internal constant returns(uint) {
        return (node & 0xFFFFFFFF00000000) / 2**32;
    }

    function nodeHash( uint node ) internal constant returns(uint) {
        return (node & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000) / 2 ** 64;
    }

    function blockHeaderTimeStamp( bytes blockHeader ) internal constant returns(uint) {
        uint result = 0x00;
        result = uint(blockHeader[71]) | (uint( blockHeader[70] ) * 2**8) | (uint( blockHeader[69] ) * 2**16) |
                 (uint(blockHeader[68]) * 2**24);
        return result;
    }

    function blockHeaderMerkle( bytes blockHeader ) internal constant returns(uint) {
        uint result = 0x00;
        for( uint index = 0 ; index < 32 ; index++ ) {
            result += uint(blockHeader[36 + 32 - index - 1]) * (2**(index * 8));
        }
        
        return result;
    }

    
    function verifyShare( bytes coinBaseTxPrefix,
                          uint[] merkleBranch,
                          uint[] sibling,
                          bytes blockHeader,
                          uint  timestampIndex ) returns (bool) {
        uint length = merkleBranch.length;                              
        uint leaf = merkleBranch[ length - 1 ];
        
        if( leaf != uint( sha256(sha256(coinBaseTxPrefix,
                                        paymentPerFoundBlock[timestampIndex].coinbaseOutputs)))) return reportError("merkle leaf does not fit coinbasetx");
                              
        uint blockSha = uint(sha256(sha256(blockHeader)));
        if( ( blockSha & 0x03 ) > 0 ) return false; // set trivial difficulty for testing
        if( merkleBranch[ 0 ] != blockHeaderMerkle( blockHeader ) ) return reportError("merkle root doesn't fit block header");
        for( uint index = 0 ; index < length - 1 ; index++ ) {
            // note that we only test branch zero
            uint expected = uint(sha256(sha256(merkleBranch[index+1],sibling[index])));
            if( merkleBranch[index] != expected ) return reportError("Merkle branch is wrong");
        }

	reportError( "Verification ok" );        

        return constructCoinbaseTx(foundedBlocksTimestamps.length + blockDelayForPaymentRequest, 100);
    }

    function verifySharesTreeSubmission( uint[] nodes,
                                         uint[] sibling,
                                         uint treeHeight,
                                         uint blockSha3,
                                         uint shareTimeStamp,
                                         uint seed ) internal constant returns(bool) {
        for( uint index = 0 ; index < treeHeight - 1; index++ ) {
            // go from leaf upwards. Special treatment for root
            uint node = nodes[index];
            bool isALeftChild = ((seed & (2 ** index)) > 0);
            uint childA = nodes[index + 1 ];
            uint childB = sibling[ index ];
            
            uint min; uint max; uint hashResult;
            if( isALeftChild ) {
                min = nodeMinTimeStamp( childA );
                max = nodeMaxTimeStamp( childB );
                hashResult = hash( childA, childB );
            } else {
                min = nodeMinTimeStamp( childB );
                max = nodeMaxTimeStamp( childA );
                hashResult = hash( childB, childA );
            }
            
            if( min != nodeMinTimeStamp( node ) ) return reportError("min does not fit node");
            if( max != nodeMaxTimeStamp( node ) ) return reportError("max does not fit node");
            if( hashResult != nodeHash( node ) ) return reportError("hash does not fit node");
            if( min >= max ) return reportError("min >= max");
        }
        
        uint leafNode = nodes[ treeHeight - 1 ];
        // validate block header
        if( nodeMinTimeStamp( leafNode ) != nodeMaxTimeStamp( leafNode ) ) return reportError("leaf time stamp min!=max");
        if( nodeHash( leafNode ) != hash(blockSha3,blockSha3) ) return reportError("leaf hash != blocksha3");
        if( shareTimeStamp != nodeMinTimeStamp( leafNode ) ) return reportError("leaf timestamp != min time stamp");
        
        return true;
    }
    
    function verifyPendingShares( uint[] augmentedBranch,
                                  uint[] augmentedSibils,
                                  uint   seed,
                                  uint[] blockMerkleBranch,
                                  uint[] blockSibils,
                                  bytes  blockHeader,
                                  bytes  coinbaseTxPrefix,
                                  uint   timestampIndex ) returns (bool){
                                      
        if( ! verifyShare( coinbaseTxPrefix,
                           blockMerkleBranch,
                           blockSibils,
                           blockHeader,
                           timestampIndex) ) return reportError("verifyShare failed");
                                      
        UserData data = userData[ msg.sender ];
        if( data.verificationCompleted ) return reportError("previous verification not completed");
        if( nodeMinTimeStamp(augmentedBranch[0]) <= data.lastVerifiedTimeStamp ) return reportError("nodeMinTimeStamp(augmentedBranch[0]) <= data.lastVerifiedTimeStamp");
        uint shareTimestamp = blockHeaderTimeStamp(blockHeader);
        if( (2 ** (augmentedBranch.length-1)) != data.numPendingShares ) return reportError("2 **(branch length-1) != num pending shares"); // we assume always full tree
         // check merkle is the same
        if( augmentedBranch[0] != data.pendingSharesMerkle ) return reportError("augRoot != pending merkle root");

        
        if( foundedBlocksTimestamps[timestampIndex] > shareTimestamp ) return reportError("timestamp index too low");
        if( foundedBlocksTimestamps[timestampIndex + 1 ] < shareTimestamp ) {
            if( foundedBlocksTimestamps.length > timestampIndex + 1 ) return reportError("timestamp index too high");
        }
        
        if( ! verifySharesTreeSubmission( augmentedBranch,
                                          augmentedSibils,
                                          augmentedBranch.length,
                                          uint(sha3(blockHeader)),
                                          shareTimestamp,
                                          seed ) ) return reportError("verifySharesTreeSubmission failed");

        data.numVerifiedUnpaidShares = data.numPendingShares;
        data.numPendingShares = 0;
        data.lastVerifiedTimeStamp = shareTimestamp;
        data.verificationCompleted = true;
        reportError("Verification completed");

        return constructCoinbaseTx(foundedBlocksTimestamps.length + blockDelayForPaymentRequest, 100);
    }

    function compareBlockHeaderAndPrev( bytes prevHeader, bytes header ) constant internal returns(bool) {
        uint prev = 0;
        uint prevSha = uint(sha256(sha256(prevHeader)));
        if( prevSha & 0x03 > 0 ) return reportError("compareBlockHeaderAndPrev: difficulty too low"); // check dummy difficulty for debug
        for( uint index = 4 ; index < 36 ; index++ ) {
            prev = uint(header[index]) | (prev * 256);
        }
        
        return ( prev == prevSha );
    }


    function submitFullBlock( bytes coinBaseTxPrefix,
                              uint[] merkleBranch,
                              uint[] sibling,
                              bytes blockHeader,
                              bytes blockHeader1,
                              bytes blockHeader2,                              
                              bytes blockHeader3,                              
                              bytes blockHeader4,                              
                              bytes blockHeader5,                              
                              uint  timestampIndex ) returns (bool) {
        if( ! verifyShare( coinBaseTxPrefix, merkleBranch, sibling, blockHeader, timestampIndex ) ) {
            return reportError("verifyShare failed");            
        }
        if( ! compareBlockHeaderAndPrev( blockHeader, blockHeader1 ) ) {
            return reportError("compareBlockHeaderAndPrev( blockHeader, blockHeader1 ) failed");
        }    
        if( ! compareBlockHeaderAndPrev( blockHeader1, blockHeader2 ) ) {
            return reportError("compareBlockHeaderAndPrev( blockHeader1, blockHeader2 ) failed");
        }    
        if( ! compareBlockHeaderAndPrev( blockHeader2, blockHeader3 ) ) {
            return reportError("compareBlockHeaderAndPrev( blockHeader2, blockHeader3 ) failed");
        }    
        if( ! compareBlockHeaderAndPrev( blockHeader3, blockHeader4 ) ) {
            return reportError("compareBlockHeaderAndPrev( blockHeader3, blockHeader4 ) failed");
        }    
        if( ! compareBlockHeaderAndPrev( blockHeader4, blockHeader5 ) ) {
            return reportError("compareBlockHeaderAndPrev( blockHeader4, blockHeader5 ) failed");
        }    
        
        if( uint( sha256(sha256(blockHeader5))) & 0x03 > 0 ) return reportError("block5 diff too small"); // dummy difficulty for debug
        
        
        // submission is valid
        UserData data = userData[ msg.sender ];
        data.numVerifiedUnpaidShares += 10000;
        foundedBlocksTimestamps.push(blockHeaderTimeStamp(blockHeader));

        reportError("ok");
        return true;
    }

    event Log1( string func, uint x, uint result );
    event Log2( string func, bytes x, uint result );    
    event Log3( string func, bytes x, bytes y, bytes z, uint result );    
    function debug_hash3Int( uint x ) {
        Log1( "debug_hash3Int", x, uint(sha3(x)) );
    }
    
    function debug_hash3Byte( bytes x ) {
        Log2( "debug_hash3Byte", x, uint(sha3(x)) );        
    }

    function debug_hash256Double( bytes x ) {
        Log2( "debug_hash256Double", x, uint(sha256(sha256(x))) );        
    }

    function debug_hash256Double_concat( bytes x, bytes y, bytes z ) {
        Log3( "debug_hash256Double", x, y,z, uint(sha256(sha256(x,y,z))) );        
    }
 
    function debug_verifyShare( bytes coinBaseTxMiddle,
                          uint[] merkleBranch,
                          uint[] sibling,
                          bytes blockHeader,
                          uint  timestampIndex,
                          uint  steps ) constant returns (uint) {
        uint length = merkleBranch.length;                              
        uint leaf = merkleBranch[ length - 1 ];
        if( steps < 1 ) return 0;
        uint sha = uint( sha256(sha256(coinBaseTxMiddle,
                                       paymentPerFoundBlock[timestampIndex].coinbaseOutputs)));
        if( leaf != sha) return sha;
        if( steps < 2 ) return 2;                      
        uint blockSha = uint(sha256(sha256(blockHeader)));
        if( steps < 3 ) return 3;
        if( ( blockSha & 0x03 ) > 0 ) return 4; // set trivial difficulty for testing
        if( steps < 4 ) return 5;
        if( steps < 5 ) return 6;
        if( merkleBranch[ 0 ] != blockHeaderMerkle( blockHeader ) ) return 7;
        if( steps < 6 ) return 8;
        for( uint index = 0 ; index < length - 1 ; index++ ) {
            // note that we only test branch zero
            uint expected = uint(sha256(sha256(merkleBranch[index+1],sibling[index])));
            if( merkleBranch[index] != expected ) return (9 + index);
        }
        
        return 10000;
    } 
    
    function debug_verifySharesTreeSubmission( uint[] nodes,
                                         uint[] sibling,
                                         uint treeHeight,
                                         uint blockSha3,
                                         uint shareTimeStamp,
                                         uint seed ) constant returns(string) {
        for( uint index = 0 ; index < treeHeight - 1; index++ ) {
            // go from leaf upwards. Special treatment for root
            uint node = nodes[index];
            bool isALeftChild = ((seed & (2 ** index)) > 0);
            uint childA = nodes[index + 1 ];
            uint childB = sibling[ index ];
            
            uint min; uint max; uint hashResult;
            if( isALeftChild ) {
                min = nodeMinTimeStamp( childA );
                max = nodeMaxTimeStamp( childB );
                hashResult = hash( childA, childB );
            } else {
                min = nodeMinTimeStamp( childB );
                max = nodeMaxTimeStamp( childA );
                hashResult = hash( childB, childA );
            }
            
            if( min != nodeMinTimeStamp( node ) ) return "min does not fit node";
            if( max != nodeMaxTimeStamp( node ) ) return "max does not fit node";
            if( hashResult != nodeHash( node ) ) return "hash does not fit node";
            if( min >= max ) return "min >= max";
        }
        
        uint leafNode = nodes[ treeHeight - 1 ];
        // validate block header
        if( nodeMinTimeStamp( leafNode ) != nodeMaxTimeStamp( leafNode ) ) return "leaf time stamp min!=max";
        if( nodeHash( leafNode ) != hash(blockSha3,blockSha3) ) return "leaf hash != blocksha3";
        if( shareTimeStamp != nodeMinTimeStamp( leafNode ) ) return "leaf timestamp != min time stamp";
        
        return "ok";
    }
    
    function debug_blockHeaderMerkle( bytes blockHeader ) constant returns(uint) {
        uint result = 0x00;
        for( uint index = 0 ; index < 32 ; index++ ) {
            result += uint(blockHeader[36 + 32 - index - 1]) * (2**(index * 8));
        }
        
        return result;
    }
    
    function debug_resetuser( ) {
        UserData data = userData[ msg.sender ];
        data.lastVerifiedTimeStamp = 0;
        data.verificationCompleted = true;
    }
    
    function debug_multiplehash( uint x, uint y ) constant returns(uint) {
        return uint(sha3(x,y));
    }
    
    function debug_getCoinbaseTxOutputLen(uint blockNumber) constant returns(uint) {
        return paymentPerFoundBlock[blockNumber].coinbaseOutputs.length;        
    }
    
    function debug_resizeRealPrefix(uint size, uint blockNumber) {
        paymentPerFoundBlock[blockNumber].coinbaseOutputs.length = size;
    }
 
    function debug_coinbaseTxSha( bytes prefix, uint blockNumber ) constant returns(uint){
        uint sha = uint( sha256(sha256(prefix,
                                       paymentPerFoundBlock[blockNumber].coinbaseOutputs)));
        return sha;
    }   
    
    function debug_extendCoinbaseTxOutput( uint blockNumber, uint length ) {
        bytes32 const = 0xcccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc;       
        for( uint index = 0 ; index < (length / 32) ; index++ ) {
            paymentPerFoundBlock[blockNumber].coinbaseOutputs.push(const);
        }
    }    
    
}