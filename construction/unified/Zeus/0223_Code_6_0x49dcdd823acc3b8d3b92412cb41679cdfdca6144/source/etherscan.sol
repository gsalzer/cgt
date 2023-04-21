pragma solidity ^0.4.8;
/* 
    This contract has a minimum lending amount of 0.5 ether. The lent amount can be anything over that.
    A lender can lend less, if it's all that's required to fully fund a loan. The borrower can repay
    any amount. There is some extra logic on the last repayment to make sure that everyone gets 
    fully repaid.
*/
contract LoanContract {
    //Constructor vars
    address borrowerAddress;
    uint public loanAmount;
    uint public fundRaisingDeadline;
    uint public repaymentDeadline;
    
    //Useful vars
    uint public numLenders;
    uint public amountRaised;
    uint public amountRepaid;
    uint public minimumLendAmount = 500000000000000000;
    /* Since solidity doesn't all iterating over mapping, we need 2 data structures to represent lender accounts */
    address[] public lenderAddresses;
    mapping(address => LenderAccount) public lenderAccounts;
    enum State {raising, funded, repaying, repaid, expired} //default?
    State public currentState;
    struct LenderAccount {
        uint amountLent;
        uint amountRepaid;
    }
    
    //Events
    event LentToLoan(address addr, uint amount);
    event DisbursedToBorrower(address addr, uint amount);
    event RepaidByBorrower(address addr, uint amount);
    event RepaidToLender(address addr, uint amount);
    event SentBack(address addr, uint amount);
    event LoanFunded();
    event LoanExpired();
    event LoanRepaid();
    
    // Constructor
    function LoanContract(
        address _borrowerAddress, 
        uint loanAmountInEthers,
        uint fundRaisingDurationInDays,
        uint repaymentDurationInDays 
    ) {
        borrowerAddress = _borrowerAddress;
        loanAmount = loanAmountInEthers * 1 ether;
        fundRaisingDeadline = now + fundRaisingDurationInDays * 1 days;
        repaymentDeadline = fundRaisingDeadline + repaymentDurationInDays * 1 days;
    }

    // To keep things simple, the default function handles all logic for both lenders and borrowers
    function() payable {
        if (currentState == State.raising) {
            lend();
        } else if (currentState == State.repaying) {
            repay();
        } else {
            throw;
        }
    }
    
    // Lender sends wei to the contract, we store how much they lent
    function lend() private {
        // Don't allow borrowers to lend
        if (msg.sender == borrowerAddress) {
            throw;
        }
        // Don't allow overfunding
        if (msg.value > amountLeftToFund()) {
            throw;
        }
        // Don't allow lending less than the minimum, unless it's exactly what's needed to fund the loan
        if (msg.value < minimumLendAmount && msg.value != amountLeftToFund()) {
            throw;
        }
        
        // Handle lender lending twice
        if (lenderAccounts[msg.sender].amountLent == 0) {
            numLenders++;
            lenderAddresses.push(msg.sender);
            lenderAccounts[msg.sender] = LenderAccount(msg.value, 0);
        } else {
            lenderAccounts[msg.sender].amountLent += msg.value;
        }
        
        amountRaised += msg.value;
        LentToLoan(msg.sender, msg.value);
        
        checkLoanFunded();
    }
    
    // Disburse to borrowers account, and move to repaying
    // Note the last lender pays the gas on this but it isn't very expensive)
    function checkLoanFunded() private {
        if (amountRaised >= loanAmount) {
            LoanFunded();
            if (borrowerAddress.send(amountRaised)) {
                currentState = State.repaying;
                DisbursedToBorrower(borrowerAddress, amountRaised);
            } //@todo error case?
        }
    }
    
    // Borrower sends wei to the contract, we disburse to all the lenders
    function repay() private {
        // Only borrowers can repay, and can't repay more than the amount left
        if (msg.sender != borrowerAddress) {
            throw;
        }
        if (msg.value > amountLeftToRepay()) {
            throw;
        }
        
        amountRepaid += msg.value;
        RepaidByBorrower(borrowerAddress, msg.value);
        
        // Distribute wei evenly to lenders, if there's a remainder we'll distribute at the end
        uint amountToDistribute = msg.value;
        uint amountDistributed = 0;
        for (uint i = 0; i < lenderAddresses.length; i++) {
            address currentLender = lenderAddresses[i];
            uint amountForLender = getAmountForLender(amountToDistribute, lenderAccounts[currentLender]);
            if (amountForLender > 0) {
                if (currentLender.send(amountForLender)) {
                    RepaidToLender(currentLender, amountForLender);
                    lenderAccounts[currentLender].amountRepaid += amountForLender;
                    amountDistributed += amountForLender;
                } //@todo error case? Perhaps we need an admin withdrawl bucket for unsendable lender repayments
            }
        }
        
        checkLoanRepaid();
    }
    
    function getAmountForLender(uint amountToDistribute, LenderAccount account) private returns (uint) {
        if (amountRepaid != loanAmount) {
            // Regular case, division in solidity throws away the remainder
            return (amountToDistribute * account.amountLent) / loanAmount;
        } else {
            // Last repayment case, make sure everyone is topped up
            return account.amountLent - account.amountRepaid;
        }
    }
    
    function checkLoanRepaid() private {
        if (amountRepaid == loanAmount) {
            currentState = State.repaid;
            LoanRepaid();
        }
    }
    
    /* Useful constant functions */
    
    function amountLeftToFund() constant returns (uint) {
        return loanAmount - amountRaised;
    }
    
    function amountLeftToRepay() constant returns (uint) {
        return loanAmount - amountRepaid;
    }
    
    function isDelinquent() constant returns (bool) {
        return (now >= repaymentDeadline && currentState != State.repaid);
    }
    
    // Anyone can call this, but it will probably be an admin
    // If the expiration date has passed, send wei back to lenders
    function makeExpired() {
         if (now >= fundRaisingDeadline && currentState != State.expired) {
            currentState = State.expired;
            LoanExpired();
            for (uint i = 0; i < lenderAddresses.length; i++) {
                address currentLender = lenderAddresses[i];
                if (currentLender.send(lenderAccounts[currentLender].amountLent)) {
                    RepaidToLender(currentLender, lenderAccounts[currentLender].amountLent);
                } //@todo error case?
            }
        }
    }
}