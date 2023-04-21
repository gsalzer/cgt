pragma solidity ^0.4.2;

contract IDCaseD{
    address public owner;
    mapping (address => int) public challenge;
    mapping (address => int) public solution;
    int public publicRSAModule;
    int public publicRSAPower;
     
    function IDCaseD(int _RSAModule, int _RSAPower){
        publicRSAModule = _RSAModule;
        publicRSAPower = _RSAPower;
        owner = msg.sender;
    }
 
    modifier onlyBy(address authorized){
       if (msg.sender == authorized){
           _;
       }
       else{
           throw;
       }
    }
    function sendChallenge(int chall) public {
       challenge[msg.sender] = chall;
    }
     
    function resolveChallenge(address challenger, int sol) onlyBy(owner){
       solution[challenger] = sol;
    }
}

contract RSALib{
    
    modifier onlyBy(address authorized){
        if (msg.sender == authorized){
            _;
        }
        else{
            throw;
        }
    }
    function mod(int a, int n) returns (int){
       return a - n*(a/n);
    }
     
    function discretePower(int m, int d, int n) returns (int){
       int refM = m;
       int refD = d-1;
       while (refD != 0){
           if(mod(d,2) == 0){
               refM = mod(refM*refM,n);
               refD /= 2;
           }
           else{
               refM = mod(refM*m,n);
               refD -- ;
           }
        }
        return refM;
    }
 
    function bezout(int a, int b)returns(int, int,int){
       int rA=a;
       int rB=b;
       int uA = 1;
       int vA = 0;
       int uB = 0;
       int vB = 1;
       /*if (a >= b){
           rA = a;
           rB = b;
       }
       else{
           rA = b;
           rB = a;
       }*/
       while (rB != 0){
           int q = rA/rB;
           (rA, uA, vA, rB, uB, vB) = (rB, uB, vB, rA - q *rB, uA - q*uB, vA - q*vB);
       }
       return (rA,uA,vA);
    }
}

contract LocalA is RSALib{
    int p;
    int q;
    int  public d;
    int e;
    IDCaseD public myIDContract;
    
    function LocalA(int _p, int _q){
        p = _p;
        q = _q;
        generateD();
        myIDContract = new IDCaseD(p*q, d);
    }
    
    function setIDAddress(address _iDContract) public{
        myIDContract = IDCaseD(_iDContract);
    }
    
    function getE() public returns (int){
        return e;
    }
    
    function generateD()returns(int){
        int phi = (p-1)*(q-1);
        int ref = phi;
        bool generated;
        while(!generated){
            d = mod(int(sha3(ref)), p*q);
            int a;
            int b;
            int c;
            (a,b,c) = bezout(d,phi);
            if(a == 1 && b>0){
                e = b;
                generated = true;
            }
            else{
                ref = d;
            }
        }
        return e;
    }
    
    function resolveChallengeAt(address user){
        int cryptedMessage = myIDContract.challenge(user);
        int decrypt = discretePower(cryptedMessage, e,p*q);
        myIDContract.resolveChallenge(user, decrypt);
    }
}

contract LocalB is RSALib{
    int message;
bool succeed;
bool fail;
    
    function LocalB(int _message){
        message = _message;
    }
    
    function sendChallengeTo(address _iDContract){
        IDCaseD iDContract = IDCaseD(_iDContract);
        iDContract.sendChallenge(discretePower(message, iDContract.publicRSAPower(), iDContract.publicRSAModule()));
    }
    
    function checkSol(address _iDContract)returns(bool){
        IDCaseD iDContract = IDCaseD(_iDContract);
        if (message == iDContract.solution(this)){
            succeed =  true;
        }
        else{
            fail = true;
        }
    }
}