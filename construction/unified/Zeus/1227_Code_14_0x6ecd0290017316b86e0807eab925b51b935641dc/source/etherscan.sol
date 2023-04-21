pragma solidity ^0.4.6;

contract PasswordMarket {
	address public owner;
	uint128 feeratemul = 1; uint128 feeratediv = 20; // fraction to calculate contract fee
	uint public minRewardAmount = 0.01 ether; // 10 finney
	
	struct Offer2 {
		uint weiAmount;
		address who;
  	}
	mapping (bytes32 => Offer2) public dHashes;

	// Events
	event hashSubmitted(address indexed author, bytes32 indexed hash, uint amount);
	event hashResolved(address indexed author, bytes32 indexed hash, string s, uint amount);

	function PasswordMarket() {
    	owner = msg.sender;
    }
	
	function isHashHere(bytes32 hash) internal returns(bool) {
		return !(dHashes[hash].weiAmount==0);
	}
	
	function submitHash(bytes32 h) payable {
		if((!isHashHere(h))&&(msg.value>=minRewardAmount)) { 
			dHashes[h].who = msg.sender;
			dHashes[h].weiAmount = msg.value;
			hashSubmitted(msg.sender, h, msg.value);
			/*o.hash = h;
			o.weiAmount = weiOffered;
			o.who = msg.sender;
			lHashes.push(o);*/
		}
		else {
			// The hash already exists
			throw;
		}
	}
	
	function submitAnswer(string s) {
		bytes32 hash = sha256(s);
		uint reward = dHashes[hash].weiAmount;
		if(reward>0) {
		    uint fees = reward*feeratemul/feeratediv;
			uint netreward = reward-fees;
			if(!msg.sender.send(netreward)) throw; // pay finder, check for security flaw here
			if(!owner.send(fees)) throw; // pay owner, check for security flaw here
			hashResolved(msg.sender, hash, s, netreward);
			delete dHashes[hash];
		}
		else {
			throw;
		}
	}

	// ANON DONATIONS

	/* Allow anonymous donation */
	function () payable {
		// throw;     // Prevents accidental sending of ether
		payOwner(msg.value);
	}

	// FOR OWNER ONLY

	modifier onlyOwner() {
		if(msg.sender != owner) throw; // rollback puis erreur
		_;
    }
    
    function payOwner(uint amount) private onlyOwner() {
        if(!owner.send(amount)) throw; // pay owner
    }

    function modifyFees(uint128 frm, uint128 frd) onlyOwner() {
    	if((frd!=0)&&(frm<=frd)) {
    		feeratemul = frm; feeratediv = frd;
    	}
    }

	function withdrawFunds() onlyOwner() {
		payOwner(this.balance);
	}

	function autokill() onlyOwner() {
        suicide(owner);
	}
}