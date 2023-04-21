pragma solidity ^0.4.6;
contract token { function saleTransfer(address receiver, uint amount) returns(bool success){  } }

contract Crowdsale {
    address public beneficiary;
    uint public fundingGoal; 
    uint public maxGoal;
    uint public amountRaised; 
    uint public start;
    uint[4] public deadlines;// = [1484150400, 1484755200, 1485360000,1485964800];
    uint[4] public prices = [909090909090909,952380952380952,970873786407766, 1000000000000000];
    token public tokenReward;
    mapping(address => uint256) public balanceOf;
    bool fundingGoalReached = false;
    event GoalReached(address beneficiary, uint amountRaised);
    event FundTransfer(address backer, uint amount, bool isContribution);
    bool crowdsaleClosed = false;

    /* data structure to hold information about campaign contributors */

    /*  at initialization, setup the owner */
    function Crowdsale( ) {
        beneficiary = 0x2aA2B0Ca9405B882e02851B81706904829C4AF17;
        fundingGoal = 50000000;//in tokens
        maxGoal = 394240000;
        start = now;//1484146800;
        tokenReward = token(0xCe6C866D5B28DC8bA4aA72Ad3d57A8CE2d11C4Db);
        deadlines[0]=now;
        deadlines[1]=now + 10 minutes;
        deadlines[2]=now + 20 minutes;
        deadlines[3]=now + 30 minutes;
    }

    /* The function without name is the default function that is called whenever anyone sends funds to a contract */
    function () payable{
        if (crowdsaleClosed||now<start||amountRaised+amount>maxGoal) throw;
        uint amount = msg.value;
        balanceOf[msg.sender] = amount;
        amountRaised += amount;
        //if(!tokenReward.saleTransfer(msg.sender, amount / getPrice())) throw;
        FundTransfer(msg.sender, amount, true);
    }
    
    function getPrice() constant returns (uint256 price){
        for(var i = 0; i < deadlines.length; i++)
            if(now<deadlines[i])
                return prices[i];
        return prices[prices.length-1];//should never be returned, but to be sure to not divide by 0
    }

    modifier afterDeadline() { if (now >= deadlines[deadlines.length-1]) _; }

    /* checks if the goal or time limit has been reached and ends the campaign */
    function checkGoalReached() afterDeadline {
        if (amountRaised >= fundingGoal){
            fundingGoalReached = true;
            GoalReached(beneficiary, amountRaised);
        }
        crowdsaleClosed = true;
    }


    function safeWithdrawal() afterDeadline {
        if (!fundingGoalReached) {
            uint amount = balanceOf[msg.sender];
            balanceOf[msg.sender] = 0;
            if (amount > 0) {
                if (msg.sender.send(amount)) {
                    FundTransfer(msg.sender, amount, false);
                } else {
                    balanceOf[msg.sender] = amount;
                }
            }
        }

        if (fundingGoalReached && beneficiary == msg.sender) {
            if (beneficiary.send(amountRaised)) {
                FundTransfer(beneficiary, amountRaised, false);
            } else {
                //If we fail to send the funds to beneficiary, unlock funders balance
                fundingGoalReached = false;
            }
        }
    }
}