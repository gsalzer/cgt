contract Looper { function maximumNumberOfLoops(uint _costSansLoops, uint _loopCost) returns (uint loopLimit) {} } 

contract DepositGovernance {

    address public registrationDeposits;
    address public proofOfIndividuality;
    Looper public looper;
    
    mapping(address => uint256) public registrationVote;
    mapping(address => uint256) public votes;
    
    struct proposeNewDeposit {
        uint256 depositSize;
        uint256 votesInFavour; // in ether
        uint256 votesAgainst;  // in ether
    }
    
    proposeNewDeposit[] public proposals;
    
    mapping(uint => bool) isProposed;
    
    bool roundFinished;
    
    function DepositGovernance(uint _depositSize, address _poiContract, address _looperContract){
        uint currentDepositSize = _depositSize;
        proofOfIndividuality = _poiContract;
        looper = Looper(_looperContract);
        
        proposals.push(proposeNewDeposit({
                 depositSize: currentDepositSize,
                 votesInFavour: 0,
                 votesAgainst: 0
             }));
    }
    
    function setRegistrationDepositsContract(address _registrationDeposits) {
        if(msg.sender != proofOfIndividuality) throw;
        registrationDeposits = _registrationDeposits;
    }
    
    /* 
        The registrant automatically uses their anti-spam deposits to vote for the 
        current depositSize. They can move their auto-vote to vote for other proposals 
        if they wish, by using voteOnProposal() 
    */
    
    function doRegistrationVote(address _registrant, uint _amount) external {
        if(msg.sender != registrationDeposits) throw;
        registrationVote[_registrant] += _amount;
        proposals[0].votesInFavour += _amount;
    }
    

    function newProposal(uint256 _depositSize) payable public {
        
        if(isProposed[_depositSize] == true) throw;
    
        if(_depositSize > msg.value + registrationVote[msg.sender]) throw;
        
        proposals.push(proposeNewDeposit({
            depositSize: _depositSize,
            votesInFavour: _depositSize,
            votesAgainst: 0
        }));
        
        registrationVote[msg.sender] -= (_depositSize - msg.value);
        proposals[0].votesInFavour -= (_depositSize - msg.value);
        votes[msg.sender] += msg.value;
        
        isProposed[_depositSize] = true;
    }
    
    
    
    function voteOnProposal(uint proposalIndex, bool opinion, uint _amount) payable public {
       
            if(_amount > registrationVote[msg.sender] + msg.value) throw;

            if(opinion == true)
                proposals[proposalIndex].votesInFavour += _amount;
            else proposals[proposalIndex].votesAgainst += _amount;
            
            registrationVote[msg.sender] -= (_amount - msg.value);
            proposals[0].votesInFavour -=  (_amount - msg.value);
            votes[msg.sender] += msg.value;
    }
    
    /*
        invoked at the end of each round
    */

    function processProposals() external returns (uint newDepositSize) { 
        if(msg.sender != proofOfIndividuality) throw;
        
        /* 
            Contracts which use functions that use arbitrary-length loops are 
            vulnerable to loop-attacks as described on 
            http://blog.ethereum.org/2016/06/10/smart-contract-security
            
            To prevent a loop-attack, limit the number of proposals that are processed 
            by processProposals() to 1/10th of the current block's max gas limit.
        
        */
        
        uint costSansLoop = 6093;
        uint loopCost = 513;
        uint maxLoops = looper.maximumNumberOfLoops(costSansLoop, loopCost) / 10;
        
        /* Proposals[0] is the default proposal */
        uint iterateToHighest = 0;
        
        uint loopLength;
        if(proposals.length > maxLoops) loopLength = maxLoops;
        else loopLength = proposals.length;
        
        for (uint i = 0; i < loopLength; i++){
            if(
                proposals[i].votesInFavour > proposals[i].votesAgainst 
                    && 
                proposals[iterateToHighest].votesInFavour < proposals[i].votesInFavour
            )
            iterateToHighest = i;
        }
        
        newDepositSize = proposals[iterateToHighest].depositSize;
        
        roundFinished = true;
        return newDepositSize;
    }
    
    function withdrawDeposit() {
        if(roundFinished == false) throw;
        if(votes[msg.sender] == 0) throw;
        if(!msg.sender.send(votes[msg.sender])) throw;
        votes[msg.sender] = 0;
    }

}

contract DepositGovernanceFactory {
    
    function newDepositGovernance(uint _depositSize, address _poiContract, address _looperContract) returns (address) {
        return new DepositGovernance(_depositSize, _poiContract, _looperContract);
    }
    
}