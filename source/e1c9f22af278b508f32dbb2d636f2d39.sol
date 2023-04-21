pragma solidity ^0.4.4;

contract Owned {
	address public owner;

	event OnOwnerChanged(address indexed owner);

	function Owned() {
		owner = msg.sender;
	}

	modifier fromOwner {
		if (msg.sender != owner) {
			throw;
		}
		_;
	}

	function setOwner(address _owner) fromOwner {
		owner = _owner;
		OnOwnerChanged(owner);
	}
}

contract FaucetI {
    function giveMe() 
        payable
        returns (bool success);

    function giveTo(address who)
        payable
        returns (bool success);

    function () payable {}
}

contract BasicFaucet is Owned, FaucetI {
	uint public giveAway;

	event OnGiveAwayChanged(uint indexed giveAway);
	event OnPaid(address indexed who, uint indexed giveAway);

	function BasicFaucet(uint _giveAway) {
		giveAway = _giveAway;
	}

	function setGiveAway(uint _giveAway) fromOwner {
		giveAway = _giveAway;
		OnGiveAwayChanged(giveAway);
	}

	function giveMe() 
		payable
		returns (bool success) {
		return giveTo(msg.sender);
	}

	function giveForce(address who)
		fromOwner 
		payable
		returns (bool success)  {
		return give(who);
	}

	function give(address who)
		internal
		returns (bool success);
}

contract ThrottledFaucet is BasicFaucet {
	uint public delay;
	uint public nextTimestamp;
	bytes32 constant public name = "B9LabFaucet";

    function ThrottledFaucet(uint _giveAway, uint _delay) payable
        BasicFaucet(_giveAway) {
        delay = _delay;
        nextTimestamp = now;
    }

    function giveTo(address who)
        payable
        returns (bool success) {
        return give(who);
    }

	function give(address who)
		internal
		returns (bool success) {
		if (nextTimestamp <= now) {
			// Protect from re-entrance
			nextTimestamp = now + delay;
			if (who.call.value(giveAway)()) {
				OnPaid(who, giveAway);
				return true;
			}
			nextTimestamp = now;
		}
		return false;
	}
}