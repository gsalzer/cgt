pragma solidity ^0.4.15;

//Secure auction that cannot be DoS'd
contract SecureAuction {
  address currentFrontrunner;
  uint    currentBid;
  //Store refunds in mapping to avoid DoS
  mapping(address => uint) refunds;

  //Avoids "pushing" balance to users favoring "pull" architecture
  function bid() payable external {
    require(msg.value > currentBid);

    if (currentFrontrunner != 0) {
      refunds[currentFrontrunner] += currentBid;
    }

    currentFrontrunner = msg.sender;
    currentBid         = msg.value;
  }

  //Allows users to get their refund from auction
  function withdraw() external {
    //Do all state manipulation before external call to
    //avoid reentrancy attack
    uint refund = refunds[msg.sender];
    refunds[msg.sender] = 0;

    msg.sender.send(refund);
  }
}
