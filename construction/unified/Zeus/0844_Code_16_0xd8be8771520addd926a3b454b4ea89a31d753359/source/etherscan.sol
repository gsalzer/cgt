pragma solidity 0.4.6;

contract mortal {
	address owner;
	
	function mortal() { owner = msg.sender; }
	
	function kill() { if (msg.sender == owner) suicide(owner); }
}

contract marketPayEscrow is mortal {

	// Data
	struct escrow {
		address buyer;
		address seller;
		address thirdParty;
		address recipient;
		uint amount;
		uint revokedByBuyer;
		uint revokedBySeller;
		uint revokedByThirdParty;
		uint releasedByBuyer;
		uint releasedBySeller;
		uint releasedByThirdParty;
		// For unknown reasons enum doesn't work => enum statuses {started, revoked, paid}; statuses status;
		uint status; // 0 => non-existent 1 => started, 2 => revoked, 3 => paid
	}
	mapping (uint => escrow) escrows;
	uint public numEscrows = 0;

	// Events
	event escrowStart(address buyer, address seller, address thirdParty);
	event escrowRevoke(address recipient, uint amount);
	event escrowRelease(address recipient, uint amount);

	// Functions
	function queryStatus(uint escrowId) constant returns (uint status) {
		escrow e = escrows[escrowId];
		return e.status;
	}
	
	function start(address seller, address thirdParty) returns (uint) {
		uint escrowId = numEscrows;
		numEscrows++;
		escrow memory e;
		e.thirdParty = thirdParty;
		e.seller = seller;
		e.buyer = msg.sender;
		e.amount = msg.value;
		e.recipient = seller;
		e.status = 1; // started
		escrows[escrowId] = e;
		
		escrowStart(e.buyer, e.seller, e.thirdParty); // Log
		
		return escrowId;
	}
	
	function revoke(uint escrowId) returns (uint amount) {
		escrow e = escrows[escrowId];
		if (e.status != 1) { // started
			//MyLog(bytes32("Sorry, but this escrow status is not 1: ")); MyLog(bytes32(e.status));
			return 0;
		}
		if (msg.sender == e.buyer) {
				e.revokedByBuyer = 1;
		} else if (msg.sender == e.thirdParty) {
				e.revokedByThirdParty = 1;
		} else if (msg.sender == e.seller) {
				e.revokedBySeller = 1;
		} else {
			// MyLog('Sorry, but revoke must be invoked by buyer, seller or thirdParty only.');
			return 0;
		}
		
		if (e.revokedByBuyer + e.revokedByThirdParty + e.revokedBySeller >= 2) {
			bool kk = e.buyer.send(e.amount);
			e.status = 2; // revoked
			// MyLog('Thanks. The revoke process has been completed. Funds (' + e.amount + ') have been transferred to buyer ' + e.buyer + '.');
			escrowRevoke(e.buyer, e.amount); // Log
			return e.amount;
		} else {
			// MyLog('Thanks. To complete the process at least two parties (buyer, seller or thirdParty) must invoke the revoke.');
		}
		return 0;
	}

	function release(uint escrowId) returns (uint amount) {
		escrow e = escrows[escrowId];
		if (e.status != 1) { // started
			// MyLog('Sorry, but this escrow status is not 1: ' + e.status);
			return 0;
		}
		if (msg.sender == e.buyer) {
				e.releasedByBuyer = 1;
		} else if (msg.sender == e.thirdParty) {
				e.releasedByThirdParty = 1;
		} else if (msg.sender == e.seller) {
				e.releasedBySeller = 1;
		} else {
			//MyLog('Sorry, but release must be invoked by buyer, seller or thirdParty only.');
			return 0;
		}
		
		if (e.releasedByBuyer + e.releasedByThirdParty + e.releasedBySeller >= 2) {
			bool kk = e.seller.send(e.amount);
			e.status = 3; // paid
			//MyLog('Thanks. The release process has been completed. Funds (' + e.amount + ') have been transferred to seller ' + e.seller + '.');
			escrowRelease(e.seller, e.amount); // Log
			return e.amount;
		} else {
			//MyLog('Thanks. To complete the process at least two parties (buyer, seller or thirdParty) must invoke the release.');
		}
		return 0;
	}
}