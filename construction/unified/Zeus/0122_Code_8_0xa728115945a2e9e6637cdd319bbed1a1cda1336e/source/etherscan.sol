pragma solidity ^0.4.0;

// This contract shall represent the bank of Ethereum. 
/* It can 
        --> transfer balances from one trader to another one
        --> deposit money
        --> transfer money
        --> refund your stored money
        --> selfdestruct
*/

contract BankOfEthereum {

    address owner;

    mapping (address => Trader) traders;
    
    event OutputString(string output);

	// Constructor
    function BankOfEthereum() {
        owner = msg.sender;
    }
    
    // A Trader reflexts a person in our bank. 
    struct Trader {
        address addr;
        string name;
        uint256 balance;
        string greeting;
    }
    
    // Constant prevents function from making changes to the state of the contract 
    function getBalance() constant returns (uint256) {
        return traders[msg.sender].balance;
    }
    
    // This function transfers money from the senders balance to the desired destination's balance
    function sendMoneyTo(address destination, uint256 value) returns (bool) {
        if (traders[msg.sender].balance >= value){
            traders[msg.sender].balance -= value;
            traders[destination].balance += value;
            OutputString("Transferred money successfully.");
            return true;
        }
        else {
            OutputString("Didn't transfer money.");
            return false;
        }
    }

    // The keyword 'payable' is necessary to make the funtion able to receive Ether.
    function increaseBalance() payable returns (bool) {
        traders[msg.sender].balance =+ msg.value;
        OutputString("Increased balance successfully.");
        return true;
    }

    function increaseBalanceAndSendMoneyTo(address dest, uint256 val) payable{
        bool increased = false;
        bool sent = false;
        increased = increaseBalance();
        // This way, the function would be called externally. ('this' returns the address of the contract)
        // this.increaseBalance();

        sent = sendMoneyTo(dest, val);
        // Alternative way to call a function with random order of calling arguments:
        // sendMoneyTo({value: val, destination: dest})

        if(increased && sent){
        	OutputString("Increased balance and tranferred money.");
        }
        else{
            OutputString("This did not work.");
            // throw reverts state to before call
            throw;
        }
    }

    function withdraw() {
        // var can be used for arbitrary types of variables. (This is not possible for function or return parameters)
        var share = traders[msg.sender].balance;
        traders[msg.sender].balance = 0;
        if (!msg.sender.send(share)) {
            throw;
        }
        OutputString("You withdrew all your money.");
    }

    // Potential security threat:   During send() the fallback function of the destination address will be called. 
    //                              This function could reenter the contract and cause it to send the money multiple times.
   
    /*
    function withdraw(){
        if(!msg.sender.send(traders[msg.sender].balance)){
            throw;
        }
        traders[msg.sender].balance = 0;
    }
    */
   
    // Selfdestructs the contract
    function killMe() public {
        if (msg.sender == owner) {
            // selfdestructs contract and sends remaining money to msg.sender
            selfdestruct(owner);
            OutputString("Contract is killed.");
        }            
        else {
            OutputString("Nice try. The contract is still up and alive!");
        }  
    }
    
    // Modifier allow us to add user defined functionality, e.g. access restrictions
    modifier onlyOwner {
        if (msg.sender == owner) {
            // _ is a placeholder for the function body
            _;
        }
        else {
            throw;
        }
    }
    
    // Selfdestruction using a modifier 
    function killMe2() public onlyOwner {
        OutputString("Contract is killed 2.");
        selfdestruct(msg.sender);
    }
}