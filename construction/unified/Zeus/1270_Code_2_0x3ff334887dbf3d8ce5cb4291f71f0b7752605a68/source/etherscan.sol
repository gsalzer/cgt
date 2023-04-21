pragma solidity ^0.4.6;

contract Owned {
    address public contractOwner;
    address public pendingContractOwner;

    function Owned() {
        contractOwner = msg.sender;
    }

    modifier onlyContractOwner() {
        if (contractOwner == msg.sender) {
            _;
        }
    }

    function changeContractOwnership(address _to) onlyContractOwner() returns(bool) {
        pendingContractOwner = _to;
        return true;
    }

    function claimContractOwnership() returns(bool) {
        if (pendingContractOwner != msg.sender) {
            return false;
        }
        contractOwner = pendingContractOwner;
        delete pendingContractOwner;
        return true;
    }
}

contract Ballot is Owned{
  struct Poll {
    bytes32 questionID;
    string questionTitle;
    string questionText;
    DVote[] votes;
  }

  struct DVote {
    address deputeeAddress;
    bytes32 deputeeID;
    string deputyName;
    string vote;
  }

  mapping(bytes32 => Poll) polls;

  event VoteAccepted(address deputeeAddress, bytes32 questionID, bytes32 deputeeID, string vote);


  function vote(bytes32 questionID, bytes32 deputeeID, string deputyName, string questionTitle, string questionText, string voteResult) returns(bool success){
    if(polls[questionID].questionID == 0){
        polls[questionID].questionID =  questionID;
        polls[questionID].questionTitle = questionTitle;
        polls[questionID].questionText = questionText;
    }

    polls[questionID].votes.push(DVote(msg.sender, deputeeID, deputyName, voteResult));

    VoteAccepted(msg.sender, questionID, deputeeID, voteResult);
    return true;
  }

  function getPoll(bytes32 _id) constant returns(bytes32 questionID, string questionTitle, string questionText, uint votesAmt) {
      var poll = polls[_id];
      return (
          poll.questionID,
          poll.questionTitle,
          poll.questionText,
          poll.votes.length
      );
  }
  
    function getPollVote(bytes32 _id, uint voteId) constant returns( address deputeeAddress,bytes32 deputeeID,string deputyName, string vote) {
            var poll = polls[_id];
            DVote vote1=poll.votes[voteId];
            return (
                   vote1.deputeeAddress,
                   vote1.deputeeID,
                   vote1.deputyName,
                   vote1.vote
            );
        }

}