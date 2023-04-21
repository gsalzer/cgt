pragma solidity ^0.4.6;

contract Escrow{
	address owner;
	function Escrow(){
	owner = msg.sender;
	}

	event EscrowCreated(address sender, address recipient, uint amount, uint escrowID);
	event FundsReleased(address sender, address recipient, uint amount, uint escrowID);
	event EscrowCleaned(uint escrowID);
	event EscrowRefunded(address sender, uint escrowID);

    struct EscrowObject{
        address recipient;
        address sender;
        uint amount;
    }
    mapping (uint => EscrowObject) escrows;
    uint numEscrows;
    
    function refund(uint escrowID){
        EscrowObject e = escrows[escrowID];
        if(msg.sender == owner){
            if(!e.sender.send(e.amount)){
                throw;
            }
            EscrowRefunded(e.sender, escrowID);
			clean(escrowID);
        }
    }
    
	function getEscrowOwner() constant returns (address){
		return owner;
	}
	
    function newEscrow(address recipient) payable returns (uint escrowID){
        escrowID = numEscrows++;
        EscrowObject e = escrows[escrowID];
        e.recipient = recipient;
        e.sender = msg.sender;
        e.amount = msg.value;
        EscrowCreated(msg.sender, recipient, msg.value, escrowID);
    }
    
    function release(uint escrowID){
        EscrowObject e = escrows[escrowID];
        if(e.sender == msg.sender){
            if(!e.recipient.send(e.amount)){
                throw;
            }
            FundsReleased(e.sender, e.recipient, e.amount, escrowID);
            clean(escrowID);
        }
    }
    
    function clean(uint escrowID) private{
        EscrowObject e = escrows[escrowID];
        e.recipient = 0;
        e.sender = 0;
        e.amount = 0;
        EscrowCleaned(escrowID);
    }
    
    
}