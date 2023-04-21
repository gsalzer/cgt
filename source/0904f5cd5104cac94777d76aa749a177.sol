pragma solidity ^0.4.8;
//interfaces for correct compiling
contract IProxyElectricCharger
{
     function createOrder (uint chargerId,uint orderId,address user,uint startTime,uint endTime , uint electricity,uint payedSum) external;   
     function confirmOrder (uint chargerId,uint orderId ,uint actualElectricity) external returns (bool success) ;
     function addNewCharger(uint id, address _address);
        
}
contract IElectricCharger {
   
    function createInvestor(uint _id ,address _address,uint _balance) internal;
    function setInvestors(uint[] ids,address[] addresses,uint[] balances,uint investmentsCount);

    function evaluateProfit();

    function transferMoney(uint chargerId,address user ,uint amount ,uint actualElectricity)  internal returns(bool success);
    
    function giveProfitForInvestors(  uint256   amount,uint chargerId) internal returns (bool success);
   
    function changeElectricCoefficient(uint newCoefficient);
    function createOrder(uint orderId,address user, uint startDate,uint endDate , uint electricity,uint payedSum) external;
   
    function confirmOrder(uint chargerId,uint orderId ,uint actualElectricity)  external returns(bool success,uint unfreezeSum);
    function getPrice() external returns (uint price);
}
contract IElectricAccounts{
   function freezeMoney(address userAddress,uint frozenSum);
   function isUserActive(address userAddress) constant  external  returns (bool _state);
   function unfreezeOddMoney(address userAddress,uint unfreezeSum) constant external ;
}
//contract
contract ProxyElectricCharger 
{
    address public Owner = msg.sender;
    address public Manager;
    uint public ChargersCount;
    uint[] public ChargersIds;
    mapping (uint=>Charger) Chargers;
  
    struct Charger{
            IElectricCharger Charger;
           bool State;
    }
   IElectricAccounts public Accounts;
   function setAccountsBase(address accountsBase){
       if (msg.sender != Owner && msg.sender != Manager) return ;
       Accounts = IElectricAccounts(accountsBase);
   }
      function setManager(address manager) external{
             if (msg.sender != Owner) return ;
             Manager = manager;
        }
   function createOrder (uint chargerId,uint orderId,address userAddress,uint startTime,uint endTime , uint electricity,uint payedSum) external {
            if (msg.sender != Owner && msg.sender != Manager) return ;
           if(!Accounts.isUserActive(userAddress)) return;
           if(Chargers[chargerId].Charger != IElectricCharger(address(0x0)) && Chargers[chargerId].State){
                    Accounts.freezeMoney(userAddress,payedSum);
                    Chargers[chargerId].Charger.createOrder(orderId,userAddress,startTime,endTime,electricity,payedSum);
           }
       }
   function confirmOrder (uint chargerId,uint orderId,address userAddress ,uint actualElectricity) external returns (bool success) {
              if (msg.sender != Owner && msg.sender != Manager) return ;
           if(Chargers[chargerId].Charger != IElectricCharger(address(0x0)) && Chargers[chargerId].State){
                var (result,unfreezeSum) =  Chargers[chargerId].Charger.confirmOrder(chargerId,orderId,actualElectricity);
                if(result){
                     Accounts.unfreezeOddMoney(userAddress,unfreezeSum);
                }
                return(result);
           }
    }
   
   
    function addNewCharger(uint id, address chargerAddress){
         if (msg.sender != Owner && msg.sender != Manager) return ;
         Chargers[id].Charger = IElectricCharger(chargerAddress);
         Chargers[id].State = true;
         ChargersIds.push(id);
         ChargersCount++;
    }
    function setStatusOfCharger(uint id,bool state){
              if (msg.sender != Owner && msg.sender != Manager) return ;
              Chargers[id].State = state;
    }
    function isChargerExist(address chargerAddress , uint chargerId) external returns (bool isExist){
         if(IElectricCharger(chargerAddress) != Chargers[chargerId].Charger) 
                    return false;
        return true;
    }
      function getChargers() external constant returns(  address[] addresses ,bool[] statuses) {
                address []  memory _addresses = new address[](ChargersCount);
                bool []  memory _statuses = new bool[](ChargersCount);
                for (var i = 0; i < ChargersCount; i++) {
                   _addresses[i]=Chargers[ChargersIds[i]].Charger;
                   _statuses[i]=Chargers[ChargersIds[i]].State;
                }
                return (_addresses,_statuses);
          }
   
 
}