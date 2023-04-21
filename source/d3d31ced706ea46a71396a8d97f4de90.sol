pragma solidity ^0.4.8;

contract Voting {
    event LogVote(bytes32 indexed proposalHash, bool pro, address addr);

    function vote(bytes32 proposalHash, bool pro) {
        LogVote(proposalHash, pro, msg.sender);
    }

    // again, no ether
    function () { throw; }
}