// Code is written for Solidity version 0.4.0 or newer (but not including 0.5.0)
pragma solidity ^0.4.0;

// This contract is a simple greeter. 
/* It can 
        --> greet you
        --> personalise your greeting
        --> selfdestruct
*/

contract Greeter{
	// The address of the creator should always be stored in order to reserve some rights, such as selfdestruction only for the creator of the contract.
    // By default, the creator of a contract has no privileges.
    Person owner;
    string public defaultGreeting = "Hi!";
    // Similar to a hashtable: creates Person objects for every possible address.
    mapping (address => Person) persons;

    // Functions in general are the executable units of code within a contract
    // This function is the constructor --> It will be called during creation of the contract and cannot be called afterwards.
    function Greeter() {
        // this. is not needed in order to access a state variable
        owner = persons[msg.sender];
        // Sets values for the Person object of the contract creator
        owner.addr = msg.sender;
        owner.greeting = "Aloha, chef!";
    }
    
    // Structs are custom defined types that can group several variables
    struct Person {
        // public address of an account 
        address addr;
        string greeting;
    }

	// Allows everyone to set a personal greeting or reset to default.
    function setPersonalHi(string personalGreeting) public returns (string) {
        // The default value for every variable is 0. 
        if (bytes(personalGreeting).length != 0) {
            persons[msg.sender].greeting = personalGreeting;
        }
        else {
            persons[msg.sender].greeting = defaultGreeting;
        }
        return "You successfully changed your personal greeting";
    }

	// Greets a user
    function sayHiToMe() public returns (string) {
        if(bytes(persons[msg.sender].greeting).length == 0){
            persons[msg.sender].greeting = defaultGreeting;
        }
        return persons[msg.sender].greeting;
    }
    
    // Selfdestructs the contract
    function killMe() public returns (string) {
        
        if (msg.sender == owner.addr) {
            // selfdestructs contract and sends remaining money to msg.sender
            selfdestruct(owner.addr);
        }
        else {
            return "Nice try. The contract is still up and alive!";
        }
    }
}