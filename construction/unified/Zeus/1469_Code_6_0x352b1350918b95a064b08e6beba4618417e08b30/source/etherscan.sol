contract test{
    struct elementi{
        string  name;
        string  cogn;
    }
    mapping(bytes32 => elementi) public elemento;
    function setName(string _name, string _cogn){
        bytes32 _hashcodeprodlotto=sha3(_name,_cogn);
        elemento[_hashcodeprodlotto].name=_name;
        elemento[_hashcodeprodlotto].cogn=_cogn;
    }
    function getName(string _name, string _cogn) public
    constant returns (string names, string cogn){
        names= elemento[sha3(_name,_cogn)].name;
        cogn=elemento[sha3(_name,_cogn)].cogn;
    }
}