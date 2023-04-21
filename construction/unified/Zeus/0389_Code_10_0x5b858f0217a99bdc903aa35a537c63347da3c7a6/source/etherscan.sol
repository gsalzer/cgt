pragma solidity ^0.4.7; 
 
contract BaseSmartContract {
    address creator; 
    function BaseSmartContract() public    {   creator = msg.sender;   }
    
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
contract SmartFoodProductionContract   is BaseSmartContract    
{
    string  public  Organization;
    string  public  Product ;
    address public  Production;
    
    function setOrganization(string _Organization)  onlyBy(creator)
    {
          Organization = _Organization;
       
    }
    
    function setProduct(string _Product)  onlyBy(creator)
    {
          Product = _Product;
        
    }
    function setProduction(address _Production)  onlyBy(creator)
    {
         Production = _Production;
         
    }
}

contract SmartFoodIter is BaseSmartContract    
{
    struct LogRowLog 
{
    byte     DateYY;
    string   Message;   
    string   DocUri;
    bytes32   DocSHA3;    
    address   NextLog;
    address   PrecLog;
}

   struct LogRow
{
    uint     Pos;
    string   Message;   
    
}
    
 
    uint  HistoryNum;
    mapping (uint => LogRow) public History;
    
    LogRow[]  public HistoryArr;
    
    byte   public DateYY;
    byte   public DateMM;
    byte   public DateDD;
    string public Message;   
    string public DocUri;
    bytes32 public DocSHA3;    
    address public NextLog;
    address public PrecLog;


    event InitLog(address indexed _sender,  uint256 _time,byte _DateYY,byte _DateMM,byte _DateDD,string _Message, bytes32  _DocSHA3,address _NextLog ,address _PrecLog);

    function IterLog() public   
    {
       
        //ts=block.timestamp;
        PrecLog=address(this);
        NextLog=address(this);
        
      
    }
    
    function  HistoryTo(uint  pos)  public onlyBy(creator)
    {
     
    // History[pos]=LogRow(DateYY,Message ,"", DocSHA3,  NextLog, PrecLog);    
    History[pos]=LogRow(pos,Message );    
    
        
    }
    function   HistorySet(uint  _pos,string _Message )  public onlyBy(creator)
    {
   
    // History[pos]=LogRow(DateYY,Message ,"", DocSHA3,  NextLog, PrecLog);    
    History[_pos]=LogRow(_pos,_Message );
    HistoryArr.push( History[_pos]);
    }
    
     

    function Init(byte _DateYY,byte _DateMM,byte _DateDD,string _Message, 
    //string _DocUri,
    bytes32  _DocSHA3,
    address _NextLog,
    address _PrecLog
    ) public onlyBy(creator)
    {
       
    DateYY    = _DateYY;
    DateMM    = _DateMM;
    DateDD    = _DateDD;
    
    
    Message = _Message;
    //DocUri=_DocUri;
    DocSHA3=  _DocSHA3;
    //DocSIG =   _DocSIG;
    
    NextLog=_NextLog;
    PrecLog=_PrecLog;
    //ts=block.timestamp;
    //InitLog(msg.sender,now,_DateYY,_DateMM,_DateDD,_Message,_DocSHA3,_NextLog ,_PrecLog);
        
    }

    function setMessage(string _Message)  onlyBy(creator)
    {
          Message = _Message;
          
       
    }
    
     
      function setDate(byte _DateYY,byte _DateMM,byte _DateDD)  onlyBy(creator)
    {
          DateYY = _DateYY;
          DateMM = _DateMM;
          DateDD = _DateDD;
          
          
    }
    
    
    
       function setDocUri(string _DocUri)  onlyBy(creator)
    {
          DocUri = _DocUri;
      
    }
    
     
       function setDocSHA3(bytes32  _DocSHA3)  onlyBy(creator)
    {
          DocSHA3 = _DocSHA3;
        
    }
    
       
     function setNextLog(address _NextLog)  onlyBy(creator)
    {
          NextLog = _NextLog;
         
    }
    
   
        
      function setPrecLog(address _PrecLog)  onlyBy(creator)
    {
         PrecLog = _PrecLog;
     
    }


  function appendTo(address _PrecLog)  onlyBy(creator) 
    {
        PrecLog = _PrecLog;
        SmartFoodIter  p  = SmartFoodIter(_PrecLog);
     
        p.setNextLog(address(this));
        
        
         
        //ts=block.timestamp;
    }

 
    
}