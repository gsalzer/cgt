pragma solidity ^0.4.6;

contract RandomReality {

    // Key used for managing the contract, should usually be stored offline and may be a multisig contract
    address owner;

    // Keys with permission to send responses
    address publisher;

    // Key with permission to disable the contract
    // This may be kept online, monitoring the contract
    // Once pulled, only the owner can restart
    address emergency_brake;

    // Fee per request
    uint256 fee = 2000000000000000;

    // Gas price to request from new contracts
    uint256 gas_price = 20000000000;

    // Last-changed timestamps, used to restrict price increases
    uint256 last_gas_price_increase_ts;
    uint256 last_fee_increase_ts;

    // Hash of the random.org API key we'll be using, keccak-hashed to save space
    bytes32 default_api_key;

    event LogRequest(bytes32 indexed request_id, address indexed sender, uint256 wait_blocks, uint256 wait_secs, uint256 min, uint256 max, uint256 counter, uint256 gas, bytes32 keccak_api_key);

    uint256 counter = 0;

    bool public isActive = false;
    
    modifier onlyOwner() {
        if (msg.sender != owner) throw;
        _;
    }

    function RandomReality() {
        owner = msg.sender;
    }

    function updateOwner(address _addr) onlyOwner {
        owner = _addr;
    }

    function updateEmergencyBrake(address _addr) onlyOwner {
        emergency_brake = _addr;
    }

    function activate() onlyOwner {
        isActive = true;
    }

    function deactivate() {
        if ( (msg.sender != owner) && (msg.sender != emergency_brake) && (msg.sender != publisher) ) throw;
        isActive = false;
    }

    function setDefaultAPIKey(bytes32 api_key) onlyOwner {
        default_api_key = api_key;
    }

    function setGasPrice(uint256 _price) onlyOwner {
        // Only allow the gas price to be increased once per 24 hours
        if (_price > gas_price) {
            if ( (now - last_gas_price_increase_ts) < 1 days ) throw;
            last_gas_price_increase_ts = now;
        }
        // Only allow the gas price to be doubled each time
        if ( _price > gas_price * 2 ) {
            throw;
        }
        gas_price = _price;
    }

    function getGasPrice() constant returns (uint256) {
        return gas_price;
    }

    function getFee() constant returns (uint256) {
        return fee;
    }

    function getPrice(uint256 gas) constant returns (uint256) {
        return fee + (gas_price * gas);
    }

    function setFee(uint256 _fee) onlyOwner {
        // Only allow the fee to be increased once per 24 hours
        if (_fee > fee) {
            if ( (now - last_fee_increase_ts) < 1 days ) throw;
            last_fee_increase_ts = now;
        }
        // Only allow the fee to be doubled each time
        if ( _fee > fee * 2 ) {
            throw;
        }
        fee = _fee;
    }

    function withdraw(address addr, uint256 amount) onlyOwner {
        bool r = addr.send(amount);
    }

    function setPublisher(address addr) onlyOwner {
        publisher = addr;
    }

    // The ID be unique per sender + block height + block time + settings.
    // This should be normally unique in practice.
    // It may be possible for a miner to arrange to create the same ID twice in different (mutually exclusive) blocks, one of which will be orphaned.
    // However, they will have to be at the same height, with the same claimed timestamp.

    // If the block that triggers the request is orphaned by the time
    // ...we are supposed to send the request for a number, we will never ask for a number for it from random.org
    // ...and it will be as if nothing happened.

    // If the block is orphaned between requesting the number and creating the response
    // ...we want a permanent record of the request happening as we have a random.org response to explain
    // ...so we will send it to your contract anyway.

    // If the gas you intend to use is very high and the number of blocks you wait is very short
    // ...we reserve the right to wait longer than you asked to reduce the risk of getting orphaned.

    function requestNumber(uint256 min, uint256 max, uint256 wait_blocks, uint256 wait_secs) payable returns (bytes32) {

        if (msg.value < fee) throw;
        if (min > max) throw;
        if (!isActive) throw;

        uint256 gas_amount = (msg.value - fee) / gas_price;
        counter++;

        bytes32 request_id = sha3(msg.sender, wait_blocks, wait_secs, min, max, counter, gas_amount, default_api_key, block.number, now); 

        // Log everything used in the request_id except block number and timestamp, which we can recover from the block
        // This allows us to recreate the request ID on the server side
        // That way we don't have to trust the node feeding us event log information: 
        // If it feeds us the wrong settings for a real request_id, we can detect it
        // ...and if it feeds us non-existent requests, we'll make bogus requests to random.org, but nobody will care

        LogRequest(request_id, msg.sender, wait_blocks, wait_secs, min, max, counter, gas_amount, default_api_key); 

        return request_id;

    }

    // Putting this here for now - belongs somewhere else
    function __random_callback(bytes32 request_id, uint256 val, uint256 err, bytes32 ipfs_proof) {}

}