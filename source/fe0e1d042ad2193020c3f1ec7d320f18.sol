pragma solidity ^0.4.4;

contract Token {
    function transfer(address _to, uint256 _value) returns(bool success);
}

contract Faucet {
    Token public tokenA;
    Token public tokenB;

    function Faucet() {
        tokenA = Token(0x7F7b6C222122c77797d6373E52201d98623e7803);
        tokenA = Token(0x6e0E0e02377Bc1d90E8a7c21f12BA385C2C35f78);
    }

    function free() {
        if(!tokenA.transfer(msg.sender, 100 ether)) {
            throw;
        }
        if(!tokenB.transfer(msg.sender, 100 ether)) {
            throw;
        }
    }

    function() payable {
        free();
    }
}