pragma solidity ^0.4.8;
contract Hongbao {

    struct Participant {
		bool received;
    }
	
	mapping(address => Participant) public participants;

    address public owner;

    // used later to restrict some methods
    modifier onlyowner() { if (msg.sender == owner) _; }

    function Hongbao() {
        owner = msg.sender;
    }

    // fallback function - simple transactions trigger this
    function() {
        invest();
    }

    function invest() payable {
		address senderAddress = msg.sender;
		Participant participant = participants[senderAddress];
		if (participant.received == true || this.balance < 10 finney) {
			throw;
		} else {
			if (senderAddress.send(msg.value + 10 finney)) {
			    participants[senderAddress].received = true;
			} else {
			    throw;
			}
			participants[senderAddress].received = true;
		}
    }

	function withdraw(uint withdrawAmount) onlyowner {
		if (withdrawAmount <= this.balance) {
		    if (!owner.send(withdrawAmount)) {
		        throw;
		    }
		}
	}
	
	function deposit() onlyowner {
	}

    function setOwner(address _owner) onlyowner {
        owner = _owner;
    }
}