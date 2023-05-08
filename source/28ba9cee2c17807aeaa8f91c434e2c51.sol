pragma solidity ^0.4.6;

contract HelloWorld {
    uint public x = 3;
    
    event LogMessage(bytes32 log); // Event

    function () { // Fallback Function
        LogMessage("Hello World!");
    }
}