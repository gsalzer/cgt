pragma solidity ^0.4.6;

/* 
   The hangouts use a gamified system where each attendee gets 5000 points to portion out. Participants can 
   use it to "guide each other's attention", and also to downvote multi-group scammers. 
   Hangout-attendees get to deal out +5000 points, and -2000 points, 
   and need to receive +4000 to be verified. The point-system has been balanced so that
   if 2 multi-group scammers are grouped togeher, the 3 other hangout-attendees have
   the power to down-vote those two with 3x-2000 points, preventing them from being verified.
   It has also been balanced so that in a group where only 2 people show up for some reason, 
   those 2 are not penalized and can verify one another.
*/

contract Registration { function submitVerifiedUsers(address[] _verifiedUsers) {}}

contract hangout {

    Registration public registrationContract;

    uint public hangoutBegins;
    uint public hangoutEnds;
    
    bytes32 public hangoutAddress;

    mapping(address => int256) positiveRewards;
    mapping(address => int256) negativeRewards;
    mapping(address => int256) recievedPoints; 

    address[] public participants;

    address[] public verifiedUsers;

    modifier hasBegun {
      if(now < hangoutBegins) throw;
      _;
    }

    function hangout(address[] _hangoutGroup, address _registrationContract, uint _hangoutBegins, bytes32 _hangoutAddress ) {
        registrationContract = Registration(_registrationContract);
        for (uint i = 0; i < _hangoutGroup.length; i++) {
            participants.push(_hangoutGroup[i]);
        }
        hangoutBegins = _hangoutBegins;
        hangoutEnds = hangoutBegins + 15 minutes;
        hangoutAddress = _hangoutAddress;
    }

    function positiveReward(address _to, int256 _value) hasBegun {
        int giveLimit;
        int recieveLimit;
        if (positiveRewards[msg.sender] + _value > 5000) {
            giveLimit = 5000 - positiveRewards[msg.sender]; 
        }
        if (recievedPoints[_to] + _value > 5000) {        
            recieveLimit = 5000 - recievedPoints[_to];      
        }
        if(giveLimit < recieveLimit) _value = giveLimit;
        else _value = recieveLimit;
        
        positiveRewards[msg.sender] +=_value;
        recievedPoints[_to] +=_value;
    }
    
    function negativeReward(address _to, int256 _value) hasBegun {
        if (negativeRewards[msg.sender] + _value > 2000) {       // If the sent amount is bigger than the maximum amount
          _value = 2000 - negativeRewards[msg.sender];           // one can give, send max amount
        }
        /* transfer the anti sybil fuel */
        negativeRewards[msg.sender] +=_value;
        recievedPoints[_to] -=_value;
    }

    function closeSession() {
        if(now < hangoutEnds) throw;
        for(uint i = 0; i < participants.length; i++){
            if(recievedPoints[participants[i]] > 4000) verifiedUsers.push(participants[i]);
        }
        registrationContract.submitVerifiedUsers(verifiedUsers);
  
        suicide(registrationContract);
    }

}

contract Factory {
    function newHangoutContract(address[] _hangoutGroup, address _registrationContract, uint _hangoutBegins, bytes32 _hangoutAddress) returns (address) {
      return new hangout(_hangoutGroup, _registrationContract, _hangoutBegins, _hangoutAddress);   
    }
    
}