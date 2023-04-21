pragma solidity ^0.4.0;

/* Main webgold contract file */

contract THX {
  
  mapping (address => uint) public coinBalanceOf;
  mapping (address => uint) public rewardOf;
  uint constant wrgMul = 100; /*  coinBallance is stored in cWRG, 1/100th of WRG */
  address master;
   event CoinTransfer(address sender, address receiver, uint amount);

    /* Initializes contract with initial supply tokens to the creator of the contract */

    function THX() {
     coinBalanceOf[msg.sender] = 0;
     master = msg.sender;
    }

    /* Very simple trade function */

    function sendCoin(address receiver, uint amount) returns(bool sufficient) {
     if (coinBalanceOf[msg.sender] < amount) return false;
       coinBalanceOf[msg.sender] -= amount;
       coinBalanceOf[receiver] += amount;
       CoinTransfer(msg.sender, receiver, amount);
       return true;
     }
     
     function emitCoin(address receiver, uint amount) returns(bool sufficient) {
       if (msg.sender != master) return false;      
       coinBalanceOf[receiver] += amount;
       CoinTransfer(msg.sender, receiver, amount);
       return true;
     }
     
     
    function getRtxReward(uint amount) internal returns (uint rtx) {
        uint rewardPercent = 100 - getPercent(amount);
        return amount * rewardPercent / 100;
        
    }

    function getPercent(uint amount) internal returns (uint out_percent) {

        
        uint inWrg = amount / wrgMul;

        if ((inWrg >= 0) && (inWrg < 2)) return 50;
        if ((inWrg >= 2) && (inWrg < 4)) return 55;
        if ((inWrg >= 4) && (inWrg < 8)) return 60;
        if ((inWrg >= 8) && (inWrg < 16)) return 65;
        if ((inWrg >= 16) && (inWrg < 32)) return 70;
        if ((inWrg >= 32) && (inWrg < 64)) return 75;
        if ((inWrg >= 64) && (inWrg < 128)) return 80;
        if ((inWrg >= 128) && (inWrg < 256)) return 85;
        if ((inWrg >= 256) && (inWrg < 512)) return 90;
        if (inWrg >= 512) return 95;
        return 95;

    }

    function donate(address receiver, uint amount) returns(bool sufficient) {
        if (amount < 1*wrgMul) return false;

        uint sum_receiver = 0;
        uint sum_master = 0;
        uint percent = 0;

        percent = getPercent(amount);
        if (percent == 0) {
            return false; // if have too big sum, don't proceed any further
        }
        sum_receiver = percent * amount / 100;
        sum_master = amount - sum_receiver;
        
        uint rtx = getRtxReward(amount);

        if (coinBalanceOf[msg.sender] < amount) return false;
        
        rewardOf[receiver] += rtx;
        
        coinBalanceOf[msg.sender] -= amount;
        coinBalanceOf[receiver] += sum_receiver;
        // coinBalanceOf[master] += sum_master; // comission disappears
        CoinTransfer(msg.sender, receiver, amount);
        return true;
    }
}