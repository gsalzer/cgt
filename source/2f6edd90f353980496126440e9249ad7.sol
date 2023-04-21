contract subscriptionDebitService {
    
  struct subscription {
    address subscriber;
    uint amountInWei;
    uint debitFrequency;
  }
  
  struct debitObject {
    string name;
    address contentCreator;
    uint amountInWei;
    uint debitFrequency;
    uint nextDebit;
  }
    
mapping(address => uint) public balanceOf;    
    
mapping(address => subscription[]) public subscriptions;
mapping(address => debitObject[]) public debitObjects;
mapping(address => mapping(address => uint)) public debitObjectID;

function newDebitObject(address _contentCreator, 
                        uint _amountInWei, 
                        string _name, 
                        uint _debitFrequency
                        ) 
{
    debitObjects[msg.sender].push(debitObject({
                                    name: _name, 
                                    contentCreator: _contentCreator,
                                    amountInWei: _amountInWei,
                                    debitFrequency: _debitFrequency,
                                    nextDebit: now + _debitFrequency
                                }));
    subscriptions[msg.sender].push(subscription({
                                    subscriber: msg.sender,
                                    amountInWei: _amountInWei,
                                    debitFrequency: _debitFrequency
                                }));                            
}

function() payable {
    balanceOf[msg.sender] += msg.value;
}

function doDebit(address _subscriber, address _contentCreator) public {
        uint id = debitObjectID[_subscriber][_contentCreator];
        if(id == 0) throw;
        if(now < debitObjects[_subscriber][id].nextDebit) throw;
        
        uint amount = debitObjects[_subscriber][id].amountInWei;
        if(balanceOf[_subscriber] < amount) throw;
        
        debitObjects[_subscriber][id].nextDebit += debitObjects[_subscriber][id].debitFrequency; 
        balanceOf[_subscriber] -= amount;
        balanceOf[_contentCreator] += amount;
}

function withdraw(uint _amount) {
    if(balanceOf[msg.sender] < _amount) throw;
    balanceOf[msg.sender] -= _amount;
    if(!msg.sender.send(_amount)) throw;
}

    
}