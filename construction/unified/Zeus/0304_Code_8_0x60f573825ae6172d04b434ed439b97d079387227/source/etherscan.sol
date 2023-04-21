pragma solidity ^0.4.2;

contract Owned {
    address private _owner;

    function Owned() {
        _owner = msg.sender;
    }

    function getOwner() constant returns (address owner) {
        return _owner;
    }
}

contract Remittances is Owned {
    uint public maxNumberOfBlocksInFuture;

    struct Remittance {
        address sender;
        uint amount;
        uint toea;
        uint blockDeadline;
    }

    mapping (bytes32 => Remittance) public remittances;

    event LogRemittanceAdded(address indexed sender, bytes32 indexed hash, uint value, uint toea, uint blockDeadline);
    event LogRemittanceCollected(address indexed sender, bytes32 hash, bytes8 indexed agentCode, bytes8 indexed receiverCode);
    event LogRemittanceReturned(address indexed sender, bytes32 indexed hash);

    /**
     * @notice Constructor.
     * @param _maxNumberOfBlocksInFuture Number of blocks from the height of sending will 
     * a remittance remain valid.
     * At a block every 15 seconds, you can expect 5,760 per day.
     * To prevent remittances valid for longer than 30 days, choose 30 * 5,760..
     */
    function Remittances(uint _maxNumberOfBlocksInFuture) {
        maxNumberOfBlocksInFuture = _maxNumberOfBlocksInFuture;
    }

    /**
     * @notice Anonymise agent and receiver.
     * To collect a remittance, the agent and the receiver need both to provide a code.
     * This code is the official code to calculate the anonymised hash.
     * param agentCode The code provided by the agent.
     * param receiverCode The code provided by the receiver.
     */
    function anonymise(bytes8 agentCode, bytes8 receiverCode)
        constant
        returns (bytes32 hash) {
        return sha3(agentCode, receiverCode);
    }

    /**
     * @notice The action of sending a remittance.
     * @param hash The hash that results from a call to anonymise.
     * @param toea The number of Toea (0.01 Kina) to give out to the receiver.
     * @param blockDeadline The max block number by which the remittance can be collected.
     */
    function sendTo(bytes32 hash, uint toea, uint blockDeadline)
        payable
        returns (bool success) {
        if (remittances[hash].amount > 0
            || block.number + maxNumberOfBlocksInFuture < blockDeadline) {
            throw;
        }
        remittances[hash] = Remittance({
            sender: msg.sender,
            amount: msg.value,
            toea: toea,
            blockDeadline: blockDeadline
        });
        LogRemittanceAdded(msg.sender, hash, msg.value, toea, blockDeadline);
        return true;
    }

    /**
     * @notice The action of collecting the remittance.
     * To be able to collect, the caller needs to provide 2 codes that hash to the proper
     * value.
     * @param agentCode The code provided by the agent.
     * @param receiverCode The code provided by the receiver.
     */
    function collect(bytes8 agentCode, bytes8 receiverCode)
        returns (bool success) {
        bytes32 hash = anonymise(agentCode, receiverCode);
        Remittance storage remittance = remittances[hash];
        if (remittance.blockDeadline < block.number) {
            throw;
        }
        uint amount = remittance.amount;
        remittance.amount = 0;
        if (!msg.sender.call.value(amount)()) {
            throw;
        }
        LogRemittanceCollected(remittance.sender, hash, agentCode, receiverCode);
        return true;
    }

    /**
     * @notice The action of sending back to the sender in case the remittance was not
     * collected
     * @param hash The hash that the sender used when sending.
     */
    function returnToSender(bytes32 hash)
        returns (bool success) {
        Remittance storage remittance = remittances[hash];
        if (block.number <= remittance.blockDeadline) {
            throw;
        }
        uint amount = remittance.amount;
        remittance.amount = 0;
        if (!remittance.sender.call.value(amount)()) {
            throw;
        }
        LogRemittanceReturned(remittance.sender, hash);
        return true;
    }
}