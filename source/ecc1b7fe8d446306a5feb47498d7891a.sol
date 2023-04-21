contract RegistrationDeposits { function register(address _registrant) payable {} }

contract ProofOfIndividuality { function submitVerifiedUsers(address[] _verifiedUsers) {} }

contract HangoutFactory { function newHangoutContract(address[] _hangoutGroup, address _registrationContract, uint _hangoutBegins, bytes32 _hangoutAddress) returns (address) {} }

contract Registration {
    RegistrationDeposits public depositContract;
    ProofOfIndividuality public POI;
    HangoutFactory public hangoutFactory;
    
    uint public numUsers;
    
    mapping(address => bytes32) public userHash;
    mapping(bytes32 => address) public userAddress;
    mapping(address => uint) public userGroup;
    mapping(uint => address[]) public hangoutGroups;
    mapping(uint => address) public hangoutContract;
    mapping(address => bool) isHangoutContract;
    mapping(uint => bytes32) public hangoutAddress;


    bytes32 maxHash = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

    uint groupSize;
    bytes32 entropy;
    
    uint depositSize;

    event Registered(address userAddress, bytes32 userHash);
    event Commitment(bytes32 userHash, uint group);

    uint public genesis;
    uint public registrationPhase;
    uint public commitmentPhase;
    uint public hangoutPhase;

    function numGroups() constant returns(uint){ return numUsers / groupSize;}

    function Registration(uint _groupSize, uint _depositSize, uint _registrationPhase, uint _commitmentPhase, uint _hangoutPhase, address _hangoutFactory){
        groupSize = _groupSize;
        depositSize = _depositSize;
        entropy = sha3(block.blockhash(block.number));
        genesis = now;
        registrationPhase = now + _registrationPhase;
        commitmentPhase = now + _commitmentPhase;
        hangoutPhase = now + _hangoutPhase;
        hangoutFactory = HangoutFactory(_hangoutFactory);
    }

    function register() returns(bool success){
        if (now > registrationPhase // registation period over
        || (userHash[msg.sender] != bytes32(0)) // already registered
        || msg.value < depositSize) return; 
        depositContract.register.value(msg.value)(msg.sender);
        // generate a hash for the given user, using previous entropy, 
        // senders address and current blocknumber.
        bytes32 h = sha3(entropy, msg.sender, block.blockhash(block.number));
        entropy = h;
        userHash[msg.sender] = h;
        userAddress[h] = msg.sender;
        numUsers++;
        Registered(msg.sender, h);
        return true;
    }

    function commit() {
        if ((now < registrationPhase) // registation period not yet over
        || (now > commitmentPhase) // commitment period over
        || (userGroup[msg.sender] != 0)) return; // group already assigned
        
        uint groupNumber = uint(userHash[msg.sender]) / (uint(maxHash) / numGroups()) + 1;
    
        if(hangoutGroups[groupNumber].length >= groupSize) {
            for(uint i = 0; i < numGroups(); i++) {
                if(groupNumber - i >= 1) {
                    if(hangoutGroups[groupNumber - i].length < groupSize) { groupNumber -= i; break; }
                }
                if(groupNumber + i <= numGroups()) {
                    if(hangoutGroups[groupNumber + i].length < groupSize) { groupNumber += i; break; }
                }
            }
        }
        userGroup[msg.sender] = groupNumber;
        hangoutGroups[groupNumber].push(msg.sender);
    }
    
    function deployHangout() {
        if ((now < commitmentPhase) // commitment period not yet over
        || (now > hangoutPhase) // hangout period over
        || (hangoutAddress[userGroup[msg.sender]] != 0)) return; // hangout contract already deployed
        
        if(hangoutAddress[groupNumber] != 0) throw;
        uint groupNumber = userGroup[msg.sender];
        address newHangoutContract = hangoutFactory.newHangoutContract(hangoutGroups[groupNumber], this, (hangoutPhase - 15 minutes), hangoutAddress[groupNumber]);
        hangoutContract[groupNumber] = newHangoutContract;
        isHangoutContract[newHangoutContract] = true;
        hangoutAddress[groupNumber] = sha3(newHangoutContract);
    }
    
    function submitVerifiedUsers(address[] _verifiedUsers) {
        if(isHangoutContract[msg.sender] != true) throw;
        POI.submitVerifiedUsers(_verifiedUsers);
        isHangoutContract[msg.sender] = false;
    }

}

contract RegistrationFactory {
    function newRegistrationContract(uint _groupSize, uint _depositSize, uint _registrationPhase, uint _commitmentPhase, uint _hangoutPhase, address _hangoutFactory) returns (address) {
      return new Registration(_groupSize, _depositSize, _registrationPhase, _commitmentPhase, _hangoutPhase, _hangoutFactory);   
    }
    
}