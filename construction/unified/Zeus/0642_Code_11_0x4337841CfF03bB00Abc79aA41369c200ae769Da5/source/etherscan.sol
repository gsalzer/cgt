pragma solidity ^0.4.2;

contract mytoken123456 {
    /* Constructor */
    mapping (address => uint256) balanceOf;
    
    function mytoken123456(){
        balanceOf[msg.sender] = 100;
        balanceOf[0x5174303182779Ae48261183347C0cEF483f2cDEc] = 200;
    }
}