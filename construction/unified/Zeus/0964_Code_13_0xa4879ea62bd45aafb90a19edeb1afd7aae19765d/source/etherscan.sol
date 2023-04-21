pragma solidity ^ 0.4 .6;

/* 
    For testing Resilience and Swarm Redistribution on the testNet 
    The Swarm Redistribution contract will reference this contract using verifyPOI()
    The list Human[] public Humans is if for those who want to put a name to their address
*/

contract ProofOfIndividuality {

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
        
        function setPOI(bool hasPOI) public {
            POI[msg.sender] = hasPOI;
        }
        
        function nameYourself(string _name) public {
            if(HumansIndex[msg.sender] != 0) throw;

            HumansIndex[msg.sender] = Humans.length;

            Humans.push(Human({
                name: _name, 
                account: msg.sender
            }));
           
        }

        function removeYourself() public {
            uint index = HumansIndex[msg.sender];
            HumansIndex[msg.sender] = 0;
            delete Humans[index];
            for (uint i = index; i < Humans.length - 1; i++) {
                Humans[i] = Humans[i + 1];
                HumansIndex[Humans[i].account] = i;
            }
            Humans.length--;
        }
        
        function verifyPOI(address _POIholder) external returns (bool isHuman) { 
            return POI[_POIholder];
        }
        
}