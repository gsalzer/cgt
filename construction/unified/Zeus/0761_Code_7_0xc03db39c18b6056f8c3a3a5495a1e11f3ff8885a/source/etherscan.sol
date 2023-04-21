/*
Message Storage Smart Contract v2
developed by: MarketPay.io , 2017
*/

pragma solidity ^0.4.6;

contract mortal {
	address owner;
	function mortal() { owner = msg.sender; }
	function kill() { if (msg.sender == owner) suicide(owner); }
}

contract marketpayUnwiredApp is mortal {
	uint256 public countMessage;

	struct mssg {
		uint256 idMessage;
		uint256 idPrevious;
		uint256 timestamp;
		address from;
		address to;
		string message;
	}

	/* Array of incoming messages with structure messages[to][idMessage] */
	mapping (address => mapping (uint256 => mssg)) public messagesTo;

	/* Array of sent messages with structure messages[from][idMessage] */
	mapping (address => mapping (uint256 => mssg)) public messagesFrom;

	/* Array storing last message id for a given account */
	mapping (address => uint256) public lastIdMessageTo;
	mapping (address => uint256) public lastIdMessageFrom;
	
	
	// Events
	event calledRefillFunds(address from, uint256 timestamp, uint256 amount);
	event faucetResult(address from, address to, string result);
	event calledSendMessage(address from, address to, uint256 timestamp);


	/* Read a given message specified by id whose recipient is sender */
	function readYourMessageById(uint256 idMessage) constant returns (string message) {
		return messagesTo[msg.sender][idMessage].message;
	}

	/* Read a given message specified by id sent by user */
	function readSentMessageById(uint256 idMessage) constant returns (string message) {
		return messagesFrom[msg.sender][idMessage].message;
	}

	/* Read metadata of a message specified by id whose recipient is sender */
	function readYourMessageMetadataById(uint256 idMessage) constant returns (uint256 _idMessage, uint256 _idPrevious, uint256 _timestamp, address _from, address _to, string _message) {
		return (messagesTo[msg.sender][idMessage].idMessage, messagesTo[msg.sender][idMessage].idPrevious, messagesTo[msg.sender][idMessage].timestamp, messagesTo[msg.sender][idMessage].from, messagesTo[msg.sender][idMessage].to, messagesTo[msg.sender][idMessage].message);
	}

	/* Read metadata of a message specified by id and sent by user */
	function readSentMessageMetadataById(uint256 idMessage) constant returns (uint256 _idMessage, uint256 _idPrevious, uint256 _timestamp, address _from, address _to, string _message) {
		return (messagesFrom[msg.sender][idMessage].idMessage, messagesFrom[msg.sender][idMessage].idPrevious, messagesFrom[msg.sender][idMessage].timestamp, messagesFrom[msg.sender][idMessage].from, messagesFrom[msg.sender][idMessage].to, messagesFrom[msg.sender][idMessage].message);
	}

	/* Read last message whose recipient is sender */
	function readYourLastMessage() constant returns (string message) {
		return readYourMessageById(lastIdMessageTo[msg.sender]);
	}

	/* Read last message sent by user */
	function readSentLastMessage() constant returns (string message) {
		return readSentMessageById(lastIdMessageFrom[msg.sender]);
	}

	/* Record new message from sender */
	function sendMessage(address to, string message) {
		if (countMessage == 0) countMessage = 1; // Set init countMessage to 1
		messagesTo[to][countMessage].idMessage = countMessage;
		messagesTo[to][countMessage].idPrevious = lastIdMessageTo[to];
		messagesTo[to][countMessage].timestamp = timestamp();
		messagesTo[to][countMessage].from = msg.sender;
		messagesTo[to][countMessage].to = to;
		messagesTo[to][countMessage].message = message;

		messagesFrom[msg.sender][countMessage].idMessage = countMessage;
		messagesFrom[msg.sender][countMessage].idPrevious = lastIdMessageFrom[msg.sender];
		messagesFrom[msg.sender][countMessage].timestamp = timestamp();
		messagesFrom[msg.sender][countMessage].from = msg.sender;
		messagesFrom[msg.sender][countMessage].to = to;
		messagesFrom[msg.sender][countMessage].message = message;

		lastIdMessageTo[to] = countMessage;
		lastIdMessageFrom[msg.sender] = countMessage;
		
		countMessage++;
		calledSendMessage(msg.sender, to, timestamp()); // Log
	}

	/* For debugging purposes when using solidity online browser */
	function whoAmI() constant returns (address) {
		return msg.sender;
	}

	/* Get the current timestamp from last mined block */
	function timestamp() constant returns (uint256) {
		return block.timestamp;
	}

	/* Refill SC funds to feed faucet requests */
	function refillFunds() payable returns (uint256) {
		calledRefillFunds(msg.sender, timestamp(), msg.value); // Log

		return 1;
	}
	
	/* Faucet: Send funds, 1 Ether, to a new contact/friend */
	function sendFundsToFriend(address to) {
		if (to.balance > 1000000000000000000) {
			faucetResult(msg.sender, to, 'Friends balance higher than 1 Ether');
			throw; // If friend has enough funds (> 1 Ether), do not send anymore
		}
		if (this.balance < 1000000000000000000) {
			faucetResult(msg.sender, to, 'Faucets balance lower than 1 Ether');
			throw; // If SC funds are not enough(< 1 Ether), do not send funds
		}
		bool dummy = to.send(1000000000000000000);
		faucetResult(msg.sender, to, 'Sent 1 Ether to friends account');
	}
}