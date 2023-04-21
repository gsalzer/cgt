contract testLoot{
    struct indice{
        uint ind;
        uint ind2;
    }
    mapping (uint => indice)  IND;
    
    
    function setValue(){
        IND[0].ind=11;
        IND[0].ind2=11;
        IND[1].ind=22;    
        IND[1].ind2=22;   
        
    }
    
    function printaa(uint a) public constant returns(uint _ind, uint _ind2){
        _ind=IND[a].ind;
        _ind2=IND[a].ind2;
    }
    
    function printsll(uint _n)  public constant{
        for (uint i=0;i<_n;i++){
            printaa(i);
        }
    }
    
}