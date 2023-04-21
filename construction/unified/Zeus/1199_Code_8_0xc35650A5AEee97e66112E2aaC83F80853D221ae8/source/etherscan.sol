pragma solidity ^0.4.2;

contract VerifySig {
    
    function check(bytes32 data, uint8 v, bytes32 r, bytes32 s) constant returns(address) 
    {
      return ecrecover(data, v, r, s);
    }
    
    function checkSig(bytes32 hash, bytes sig) constant returns(address) 
    {
        //https://gitter.im/ethereum/solidity/archives/2016/12/14
        
        uint8   v;
        bytes32 r;
        bytes32 s;
        //uint8 sigLen;
        
        assembly {
        //    sigLen := and(mload(add(sig, 0)), 255)
            r := mload(add(sig, 32))
            s := mload(add(sig, 64))
            v := and(mload(add(sig, 65)), 255)
        }
    
        // toleration for old ethereum, we might not need this
        if (v < 27)
            v += 27;
    
        return ecrecover(hash, v, r, s) ;
    }
}