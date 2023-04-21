contract Ethash {
    function Ethash() {}
    
    uint merkleRoot = 0xcddd312dd2c15f394a49b417cd01bd2cabe7b863cbe3b65bfa22e4012da15bb4;
    
    function setMerkleRoot(uint root) {
        merkleRoot = root;
    }
    
    function sha3_512(bytes32 header, bytes8 nonceLe ) constant returns (uint[16]) {
        return [uint(0),1,2,3,4,5,6,7,8,9,10,11,12,13,14,16];
    }
    
    function fnv( uint v1, uint v2 ) constant returns(uint) {
        return ((v1*0x01000193) ^ v2) & 0xFFFFFFFF;
    }

    function computeCacheRoot( uint index,
                               uint[] dataSetLookup,
                               uint[] witness,
                               uint witnessIndex ) constant returns(uint) {
        uint leaf = uint( sha3(dataSetLookup[4*witnessIndex],
                               dataSetLookup[4*witnessIndex + 1],
                               dataSetLookup[4*witnessIndex + 2],
                               dataSetLookup[4*witnessIndex + 3]) );
                   
        uint[4] memory offsets = [ uint(2**0), 2**64, 2**128, 2**192];
        
        uint left;
        uint right;
                         
        // witness[] stores 5 uint per cache element, each uint is 4 nodes
        for( uint depth = 0 ; depth < 20 ; depth++ ) {
            leaf = leaf & 0xFFFFFFFFFFFFFFFF;
            // use offsets array to avoid expensive exp
            uint node  = (witness[5*witnessIndex + depth/4] / offsets[depth%4])&0xFFFFFFFFFFFFFFFF;
            if( index & 0x1 > 0 ) {
                left = leaf;
                right = node;
            }
            else {
                left = node;
                right = leaf;
            }
            
            leaf = uint(sha3(left,right));
            index = index / 2;
        }
        
        
        return leaf;
    }
    
    function computeSha3( uint[16] s, uint32[4] cmix ) constant returns(uint) {
        uint s0 = s[0] + s[1] * (2**32) + s[2] * (2**64) + s[3] * (2**96) +
                  (s[4] + s[5] * (2**32) + s[6] * (2**64) + s[7] * (2**96))*(2**128);

        uint s1 = s[8] + s[9] * (2**32) + s[10] * (2**64) + s[11] * (2**96) +
                  (s[12] + s[13] * (2**32) + s[14] * (2**64) + s[15] * (2**96))*(2**128);
                  
        
        return uint( sha3(s0,s1,
                          bytes4(cmix[0]),bytes4(cmix[1]),bytes4(cmix[2]),bytes4(cmix[3])) );
    }
 
    event Log( string msg, uint i, uint p );
    
    function hashimoto( bytes32 header,
                        bytes8 nonceLe,
                        uint fullSize,
                        uint[] dataSetLookup,
                        uint[] witnessForLookup ) constant returns(uint) {
    
        uint[16] memory s;
        uint[32] memory mix;
        uint32[4] memory cmix;        
        uint i;
        uint j;
        
        s = sha3_512(header,nonceLe);
        for( i = 0 ; i < 16 ; i++ ) {
            mix[i] = s[i];
            mix[i+16] = s[i];
        }

        for( i = 0 ; i < 64 ; i++ ) {
            uint p = fnv( i ^ s[0], mix[i % 32]) % (fullSize / 128) * 2;
            if( computeCacheRoot(p,dataSetLookup,witnessForLookup,i) != merkleRoot ) {
                // PoW failed
                Log("computeCacheRoot failed", i, p);
                return 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
            }
            for( j = 0 ; j < 8 ; j++ ) {
                mix[j] = fnv(mix[j], dataSetLookup[4*i] & 0xFFFFFFFF );
                mix[j+8] = fnv(mix[j+8], dataSetLookup[4*i + 1] & 0xFFFFFFFF );
                mix[j+16] = fnv(mix[j+16], dataSetLookup[4*i + 2] & 0xFFFFFFFF );                
                mix[j+24] = fnv(mix[j+24], dataSetLookup[4*i + 3] & 0xFFFFFFFF );
                
                dataSetLookup[4*i    ] = dataSetLookup[4*i    ]/(2**32);
                dataSetLookup[4*i + 1] = dataSetLookup[4*i + 1]/(2**32);
                dataSetLookup[4*i + 2] = dataSetLookup[4*i + 2]/(2**32);
                dataSetLookup[4*i + 3] = dataSetLookup[4*i + 3]/(2**32);
            }
        }
        
        for( i = 0 ; i < 16 ; i += 4) {
            cmix[i/4] = uint32(fnv(fnv(fnv(mix[i], mix[i+1]), mix[i+2]), mix[i+3]));
        }
        

        Log("Ok",0,0);
        return computeSha3(s,cmix);  
    }
    
}