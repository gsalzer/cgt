/*
**   Signed Digital Asset - A contract to store signatures of digital assets.
**   04-Dec-2016
**   Martin Stellnberger
**
**   This software is distributed in the hope that it will be useful,
**   but WITHOUT ANY WARRANTY; without even the implied warranty of
**   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
**   GNU lesser General Public License for more details.
**   <http://www.gnu.org/licenses/>.
*/

pragma solidity ^0.4.2;

contract SignedDigitalAsset {
    // The owner of the contract
    address owner = msg.sender;
    // Name of the institution (only for reference purposes)
    string public name;
    // Storage for linking the digital fingerprint with the json web tokens
	mapping (bytes32 => string) digitalSignatures;

    // Event functionality
	event JsonWebTokenAdded(string _digitalFingerprint, string _digitalSignature, uint256 _timestamp);
    // Modifier restricting only the owner of this contract to perform certain operations
    modifier isOwner() { if (msg.sender != owner) throw; _; }

    // Constructor of the Signed Digital Asset contract
    function SignedDigitalAsset(string _name) {
        name = _name;
    }
    // Add a new json web token and link it to its specified digital fingerprint
	function add(string _digitalFingerprint, string _digitalSignature)
        isOwner {
        digitalSignatures[sha3(_digitalFingerprint)] = _digitalSignature;
        // Broadcast the token added event
        JsonWebTokenAdded(_digitalFingerprint, _digitalSignature, now);
	}

    // Returns the corresponding signature for a specified digital fingerprint
	function get(string _digitalFingerprint) public constant returns(string){
		return digitalSignatures[sha3(_digitalFingerprint)];
	}

    // Function removes the contract from the blockchain
    function removeAssetContract()
        isOwner {
        selfdestruct(owner);
    }
}