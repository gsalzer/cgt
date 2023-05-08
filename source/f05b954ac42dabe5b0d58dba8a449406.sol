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
    address public us;
    mapping(address=> User) user;
    function RentCar(){

        us=msg.sender;
        //user[us].enterp=us;
        user[us].name="ABC Enterprise";
        user[us].homeaddress="Trivandrum";
        user[us].emailid="abcent@gmail.com";
        user[us].passphrase="abc123";
        user[us].balance=30; //welcome balance
        user[us].rentedcar=false;
        user[us].mobileno=9966718702;
        user[us].checkintime=0;
        user[us].carno=0;
        //users.push(newUser);

    }
    uint numUser=1;
    function CreateUser(address[] accounts,string _name,string _homeaddress,string _emailid,string _passphrase,uint _mobileno)payable returns (address){
        us=accounts[numUser];
        numUser++;
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
    function ValidateLogin(uint _mobileno,address[] accounts) returns (address){
      uint i;
      address a;
      for(i=0;i<9;i++){
      a=accounts[i];
        User newUser=user[a];
        if(newUser.mobileno==_mobileno){

          break;
        }
    }
    return a;
  }



  function AddMoney(address accno,uint amount)payable {

      user[accno].balance=user[accno].balance+amount;

    }

    function payrentnow(address acn,uint amount,address[] acs) payable{
    User toUser=user[acs[0]];
      User newUser=user[acn];
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

    function booking(address acn,uint checkin,uint crno)payable returns (bool success){
        User newUser=user[acn];
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