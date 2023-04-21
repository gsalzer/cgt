pragma solidity ^0.4.7; 
contract IterLog        
{
    address creator; 
    
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
        creator = msg.sender;
        //ts=block.timestamp;
        PrecLog=address(this);
        NextLog=address(this);
        
      
    }

    function Init(byte _DateYY,byte _DateMM,byte _DateDD,string _Message, 
    //string _DocUri,
    bytes32  _DocSHA3,
    address _NextLog,
    address _PrecLog
    ) public   
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
    InitLog(msg.sender,now,_DateYY,_DateMM,_DateDD,_Message,_DocSHA3,_NextLog ,_PrecLog);
        
    }

    function setMessage(string _Message)  onlyBy(creator)
    {
          Message = _Message;
          //  ts=block.timestamp;
    }
    
     
      function setDate(byte _DateYY,byte _DateMM,byte _DateDD)  onlyBy(creator)
    {
          DateYY = _DateYY;
          DateMM = _DateMM;
          DateDD = _DateDD;
          
           // ts=block.timestamp;
    }
    
    
    
       function setDocUri(string _DocUri)  onlyBy(creator)
    {
          DocUri = _DocUri;
        //    ts=block.timestamp;
    }
    
     
       function setDocSHA3(bytes32  _DocSHA3)  onlyBy(creator)
    {
          DocSHA3 = _DocSHA3;
        //  ts=block.timestamp;
    }
    
       
     function setNextLog(address _NextLog)  onlyBy(creator)
    {
          NextLog = _NextLog;
          //  ts=block.timestamp;
    }
    
   
        
      function setPrecLog(address _PrecLog)  onlyBy(creator)
    {
         PrecLog = _PrecLog;
        //ts=block.timestamp;
    }


  function appendTo(address _PrecLog)  onlyBy(creator) 
    {
        PrecLog = _PrecLog;
        IterLog  p  = IterLog(_PrecLog);
     
        p.setNextLog(address(this));
        
        
         
        //ts=block.timestamp;
    }

 



   modifier onlyBy(address _account)
    {
        if (msg.sender != _account)
            throw;
        _;
    }
    
    
     function kill() onlyBy(creator)
    {    
            suicide(creator);  // kills this contract and sends remaining funds back to creator
    }
    
    
     function setCreator(address _creator)  onlyBy(creator)
    {
          creator = _creator;
    }
    
    
    
    
}