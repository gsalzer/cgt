pragma solidity ^0.4.4;

contract Rules {
  function hasWon(uint _proposalID) constant returns (bool);
  function canVote(address _sender, uint _proposalID) constant returns (bool);
  function canPropose(address _sender) constant returns (bool);
  function votingWeightOf(address _sender, uint _proposalID) constant returns (uint);
}

contract OpenRules is Rules {
  function hasWon(uint _proposalID) constant returns (bool) {
    return true;
  }

  function canVote(address _sender, uint _proposalID) constant returns (bool) {
    return true;
  }

  function canPropose(address _sender) constant returns (bool) {
    return true;
  }

  function votingWeightOf(address _sender, uint _proposalID) constant returns (uint) {
    return 1;
  }
}