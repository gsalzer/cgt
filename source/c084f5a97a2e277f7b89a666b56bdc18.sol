pragma solidity ^0.4.5;

contract Registry {
    mapping (address => bytes32) public names;
    mapping (bytes32 => address) public addresses;

    event LogNameChanged(address indexed who, bytes32 indexed name);

    function setName(bytes32 name) returns (bool successful) {
        if (name != 0 // It is ok to set your name back to empty string
            && addresses[name] != 0 // It is taken for real
            && addresses[name] != msg.sender) { // This name is given to someone else
            // Already taken
            throw;
        }
        if (names[msg.sender] != "") { // If the sender had previously set a name
        	addresses[names[msg.sender]] = 0; // His former name will map to 0
        }
        names[msg.sender] = name;
        if (name != 0) {
            addresses[name] = msg.sender;
        }
        LogNameChanged(msg.sender, name);
        return true;
    }
}