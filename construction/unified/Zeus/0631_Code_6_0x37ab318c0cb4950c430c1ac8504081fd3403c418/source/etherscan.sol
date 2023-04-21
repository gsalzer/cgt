contract test{
    struct elementi{string  name;string  cogn;}
    mapping(uint => elementi) 
    public elemento;
    function setName(string _name){
        elemento[0].name="PIETRO";
        elemento[0].cogn="RAFFA";
    }
}