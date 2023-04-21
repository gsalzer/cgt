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
    function verifyPOI() public returns (bool) {
        return Poi[msg.sender];
    }
}

contract PoiFactory {
    function newPoiContract(address _proofOfIndividuality) returns (address) {
        return new POI(_proofOfIndividuality);
    }
}