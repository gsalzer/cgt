pragma solidity ^0.4.6;

contract KobyShop {
    
    struct Item {
        string name;
        uint price;
        bool forSale;
        address owner;
        bool initialized;
    }
    
    mapping(string => Item) private items;
    mapping(address => uint) private pendingWithdrawals;
    
    event newSale(string indexed name, uint price, address who);
    event newPurchase(string indexed name, uint price, address who);
 
    function sell(string _name, uint _price){
        
        // if item already exists we just update it
        if(items[_name].initialized){
            items[_name].price = _price;
            items[_name].forSale = true;
        }else{
            items[_name] = Item({
                name: _name,
                price: _price,
                forSale: true,
                owner: msg.sender,
                initialized: true
            });
        }
        newSale(_name, _price, msg.sender);
    }
    
    function buy(string _name) payable {
        var itm = items[_name];
        
        if(!itm.forSale) throw;
        if(msg.value < itm.price) throw;
        
        pendingWithdrawals[itm.owner] += itm.price;
        
        itm.owner = msg.sender;
        itm.forSale = false;
        
        // Send any excess back
        if (msg.value > itm.price){
            if(!msg.sender.send(msg.value - itm.price)){
                throw;
            }
        }
        
        newPurchase(_name, itm.price, msg.sender);
    }
    
    function withdraw() returns (bool) {
        uint amount = pendingWithdrawals[msg.sender];
        
        // Remember to zero the pending refund before
        // sending to prevent re-entrancy attacks
        pendingWithdrawals[msg.sender] = 0;
        
        if (msg.sender.send(amount)) {
            return true;
        } else {
            pendingWithdrawals[msg.sender] = amount;
            return false;
        }
    }
    
}