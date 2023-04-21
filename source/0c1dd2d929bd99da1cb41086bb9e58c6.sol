pragma solidity ^0.4.15;

contract Unprotected{
    address private owner;

    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }

    function Unprotected()
        public 
    {
        owner = msg.sender;
    }

    function changeOwner_fixed(address _newOwner) 
        public 
        onlyowner
    {
       owner = _newOwner;
    }
}
