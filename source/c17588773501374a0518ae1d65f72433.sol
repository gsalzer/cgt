pragma solidity ^0.4.8; 
 
contract BaseAgriChainContract {
    address creator; 
    function BaseAgriChainContract() public    {   creator = msg.sender;   }
    
    modifier onlyBy(address _account)
    {
        if (msg.sender != _account)
            throw;
        _;
    }
    
    function kill() onlyBy(creator)
    {               suicide(creator);     }
     
     function setCreator(address _creator)  onlyBy(creator)
    {           creator = _creator;     }
  
}
contract AgriChainProductionContract   is BaseAgriChainContract    
{  
    string  public  Organization;      //Production Organization
    string  public  Product ;          //Product
    string  public  Description ;      //Description
    address public  AgriChainData;     //ProductionData
    string  public  AgriChainSeal;     //SecuritySeal
    string  public  Notes ;
    
    
    function   AgriChainProductionContract() public
    {
        AgriChainData=address(this);
    }
    
    function setOrganization(string _Organization)  onlyBy(creator)
    {
          Organization = _Organization;
       
    }
    
    function setProduct(string _Product)  onlyBy(creator)
    {
          Product = _Product;
        
    }
    
    function setDescription(string _Description)  onlyBy(creator)
    {
          Description = _Description;
        
    }
    function setAgriChainData(address _AgriChainData)  onlyBy(creator)
    {
         AgriChainData = _AgriChainData;
         
    }
    
    
    function setAgriChainSeal(string _AgriChainSeal)  onlyBy(creator)
    {
         AgriChainSeal = _AgriChainSeal;
         
    }
    
    
     
    function setNotes(string _Notes)  onlyBy(creator)
    {
         Notes =  _Notes;
         
    }
}


contract AgriChainDataContract   is BaseAgriChainContract    
{  
    
     function   AgriChainDataContract() public
    {
        AgriChainNextData=address(this);
        AgriChainPrevData=address(this);
        AgriChainRootData=address(this);
    }
    
      address public  AgriChainNextData;
      address public  AgriChainPrevData;
      address public  AgriChainRootData;
      
      string public AgriChainType;
      string public AgriChainLabel;
      string public AgriChainDescription;
      
      
    function setChain(address _Next,address _Prev, address _Root)  onlyBy(creator)
    {
         AgriChainNextData=_Next;
         AgriChainPrevData=_Prev;
         AgriChainRootData=_Root;
    }
      
       function setData(string _Type,string _Label,string _Description)  onlyBy(creator)
    {
          AgriChainType=_Type;
          AgriChainLabel=_Label;
          AgriChainDescription=_Description;
    }
   
   
      
}

contract AgriChainDocumentContract   is AgriChainDataContract    
{  
     
    string  public  Emitter;      //Organization
    string  public  Name;         //Product
    string  public  Description ; //Description
    string  public  FileName;     //ProductionData
    string  public  FileHash;     //SecuritySeal
    string  public  FileData;     //SecuritySeal
    string  public  Notes ;
    address public  Revision; 
    
    function   AgriChainDocumentContract() public
    {
        Revision=address(this);
    }
    
    function setData(string _Emitter,string _Name,string _Description, string _FileName,string _FileHash,string _FileData)  onlyBy(creator)
    {
          Emitter=_Emitter;
          Name=_Name;
          Description=_Description;
          FileName=_FileName;
          FileHash=_FileHash;
          FileData=_FileData;
       
    }
    
     
    
    function setRevision(address _Revision)  onlyBy(creator)
    {
          Revision = _Revision;
        
    }
     
     
    function setNotes(string _Notes)  onlyBy(creator)
    {
         Notes =  _Notes;
         
    }
}