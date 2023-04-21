pragma solidity ^0.4.6;

contract POI {
    address ProofOfIndividuality;
    mapping(address => bool) Poi;
    function POI(address _proofOfIndividuality) {
        ProofOfIndividuality = _proofOfIndividuality;
    }
    function submitUsers(address[] _verifiedUsers) external {
        if(msg.sender != ProofOfIndividuality) throw;
        for(uint i = 0; i < _verifiedUsers.length; i++) {
            Poi[_verifiedUsers[i]] = true;
        }
    }
    function verifyPOI(address _POIholder) public returns (bool) {
        return Poi[_POIholder];
    }
}

contract PoiFactory {
    function newPoiContract(address _proofOfIndividuality) returns (address) {
        return new POI(_proofOfIndividuality);
    }
}