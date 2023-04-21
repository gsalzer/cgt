pragma solidity ^0.4.22;
//SWC-106
contract SimpleSuicide {

  function sudicideAnyone() {
    selfdestruct(msg.sender);
  }

}