pragma solidity ^0.4.2;

contract SignedDigitalAsset {
    // The owner of the contract
    address owner = msg.sender;
    // Name of the institution (only for reference purposes)
    string public name = "Test University";
    // Storage for linking the digital fingerprint with the json web tokens
	mapping (bytes32 => string) jsonWebTokens;

    // Event functionality
	event JsonWebTokenAdded(bytes32 _digitalFingerprint, string _jsonWebToken, uint256 _timestamp);
    // Modifier restricting only the owner of this contract to perform certain operations
    modifier isOwner() { if (msg.sender != owner) throw; _; }

    // Add a new json web token and link it to its specified digital fingerprint
	function add(bytes32 _digitalFingerprint, string _jsonWebToken)
        isOwner {
        jsonWebTokens[_digitalFingerprint] = _jsonWebToken;
        // Broadcast the token added event
        JsonWebTokenAdded(_digitalFingerprint, _jsonWebToken, now);
	}

    // Returns the corresponding json web token for a specified digital fingerprint
	function get(bytes32 _digitalFingerprint) constant returns(string){
		return jsonWebTokens[_digitalFingerprint];
	}
}