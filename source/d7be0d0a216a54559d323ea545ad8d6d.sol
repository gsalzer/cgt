pragma solidity ^0.4.4;

contract RentCar{

    struct User{
        //address enterp;
        string name;
        string homeaddress;
        string emailid;
        string passphrase;
        uint balance;
        bool rentedcar;
        uint mobileno;
        uint checkintime;
        uint carno;
    }
    address public carrentalent;
    mapping(address=> User) user;
    function RentCar(){

        carrentalent=msg.sender;
        //user[us].enterp=us;
        user[carrentalent].name="ABC Enterprise";
        user[carrentalent].homeaddress="Trivandrum";
        user[carrentalent].emailid="abcent@gmail.com";
        user[carrentalent].passphrase="abc123";
        user[carrentalent].balance=0; //welcome balance
        user[carrentalent].rentedcar=false;
        user[carrentalent].mobileno=9966718702;
        user[carrentalent].checkintime=0;
        user[carrentalent].carno=0;
        //users.push(newUser);

    }
    address public us;
    //uint numUser=1;
    function CreateUser(string _name,string _homeaddress,string _emailid,string _passphrase,uint _mobileno)payable returns (address){
        //us=accounts[numUser];
        //numUser++;
        user[us].name=_name;
        user[us].homeaddress=_homeaddress;
        user[us].emailid=_emailid;
        user[us].passphrase=_passphrase;
        user[us].balance=10; //welcome balance
        user[us].rentedcar=false;
        user[us].mobileno=_mobileno;
        user[us].checkintime=0;
        user[us].carno=0;
        return us;
    }

    function GetUserdetails(address _addr) returns (string name,uint bal,bool rentedca,uint mobno,string passw,uint chktime,uint carn){
            us=_addr;
            User newUser=user[us];
            name=newUser.name;
            bal=newUser.balance;
            rentedca=newUser.rentedcar;
            mobno=newUser.mobileno;
            passw=newUser.passphrase;
            chktime=newUser.checkintime;
            carn=newUser.carno;



       // return(fname,bal,rented,phno,password,checkt);

    }
    function ValidateLogin(uint _mobileno) returns (bool isauthenticated){
     
      address a;
      
      a=msg.sender;
      User newUser=user[a];
      if(newUser.mobileno==_mobileno){
          return true;
      }
    return false;
  }



  function AddMoney(uint amount)payable {

      user[msg.sender].balance=user[msg.sender].balance+amount;

    }

    function payrentnow(uint amount) payable{
    User toUser=user[carrentalent];
      User newUser=user[msg.sender];
      if(newUser.balance<amount){
        return;
      }

        newUser.balance=newUser.balance-amount;
        toUser.balance+=amount;
        newUser.rentedcar=false;
        newUser.checkintime=0;
        newUser.carno=0;
        //a=amount;




    }

    function booking(uint checkin,uint crno)payable returns (bool success){
        User newUser=user[msg.sender];
        //newUser=users[indexofac];
        if(!newUser.rentedcar){
            newUser.rentedcar=true;
            newUser.checkintime=checkin;
            newUser.carno=crno;
            success=true;
        }
        else{
            success=false;
        }
    }



}