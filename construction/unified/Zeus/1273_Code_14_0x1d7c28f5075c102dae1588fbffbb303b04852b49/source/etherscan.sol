pragma solidity ^0.4.6;

contract KobyShop {
    struct Item {
        string name;
        uint price;
        bool forSale;
        address owner;
        bool initialized;
    }
    
    mapping(bytes32 => Item) private items;
    mapping(address => uint) private pendingWithdrawals;
    
    event NewSale(bytes32 itemId, address seller);
    event NewPurchase(bytes32 itemId, address buyer);
    
    function sell(string _name, uint _price){
        var itemId = keccak256(_name);
        
        // if item already exists we just update it if same owner
        if(items[itemId].initialized){
            if(items[itemId].owner != msg.sender) throw;
            items[itemId].price = _price;
            items[itemId].forSale = true;
        }else{
            items[itemId] = Item({
                name: _name,
                price: _price,
                forSale: true,
                owner: msg.sender,
                initialized: true
            });
        }
        NewSale(itemId, msg.sender);
    }
    
    function buy(bytes32 _itemId) payable {
        var itm = items[_itemId];
        
        if(!itm.initialized) throw;
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
        NewPurchase(_itemId, msg.sender);
    }
    
    function details(bytes32 _itemId) constant returns (string, uint, address, bool){
        return (
            items[_itemId].name, 
            items[_itemId].price, 
            items[_itemId].owner,
            items[_itemId].forSale
        );
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