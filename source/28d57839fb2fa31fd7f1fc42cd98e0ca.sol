pragma solidity ^ 0.4 .6;

/* 
    For testing Resilience and Swarm Redistribution on the testNet 
    The Swarm Redistribution contract will reference this contract using verifyPOI()
    The list Human[] public Humans lets you add a name to your address
    and also deploys a smart contract that lets others simulate a pathway from you
*/

contract ProofOfIndividuality {
    
        address ResilienceContract;

        struct Human {
            string name;
            address account;
        }
        
        Human[] public Humans;
        mapping(address => uint) public HumansIndex;
        
        mapping(address => bool) public POI;
        
        function ProofOfIndividuality() {
            Humans.length++;
            Humans[0] = Human({
                name: '', 
                account: 0
            });        
        }
        
        function setPOI(address account, bool hasPOI) internal {
            POI[account] = hasPOI;
        }
        
        function addYourself(string _name) public {

            address simulatePathwayFromMe = new simulatePathwayFromX(ResilienceContract);
            
            HumansIndex[simulatePathwayFromMe] = Humans.length;

            Humans.push(Human({
                name: _name, 
                account: simulatePathwayFromMe
            }));
            
            setPOI(simulatePathwayFromMe, true);
        }
        
        function verifyPOI(address _POIholder) external returns (bool isHuman) { 
            return POI[_POIholder];
        }
        
        function setResilienceContract(address _ResilienceContract) {
            if(ResilienceContract != 0) throw;
            ResilienceContract = _ResilienceContract;
        }
        
}

pragma solidity ^ 0.4 .6;

contract owned {
    address public owner;

    function owned() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        if (msg.sender != owner) throw;
        _;
    }

    function transferOwnership(address newOwner) onlyOwner {
        owner = newOwner;
    }
}

contract Resilience { function buy() payable {} function sell(uint256 _value) {} function transfer(address _to, uint256 _value) {} }

contract simulatePathwayFromX is owned{

        Resilience public ResilienceContract;
        
        address resilienceContract;
        
        function simulatePathwayFromX(address _ResilienceContract) {
            ResilienceContract = Resilience(_ResilienceContract);
        }
        
        function() payable {
            if(msg.sender != resilienceContract) throw;
        }
        
        function simulatePathwayFromMe() public payable {
                ResilienceContract.buy.value(msg.value)();            
                ResilienceContract.transfer(msg.sender, msg.value);
        }

        function sell(uint256 _value) onlyOwner {
                ResilienceContract.sell(_value);
        }
        
        function withdraw(uint256 _value) onlyOwner {
                if (!msg.sender.send(_value)) throw;
        }
}