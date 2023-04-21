pragma solidity ^0.4.6;

contract ECVerify { function ecverify(bytes32 hash, bytes sig, address signer) returns (bool) {} }

contract B {
    bool[] public r;
  ECVerify ecv = ECVerify(0x3bbb367afe5075e0461f535d6ed2a640822edb1c);
  function c(bytes32 stateHash, bytes _signedProof, address _signer) {
    r.push(ecv.ecverify(stateHash, _signedProof, _signer));
  }
}