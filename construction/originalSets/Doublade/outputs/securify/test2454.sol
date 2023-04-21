Processing contract: /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol:PrivateInvestment
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.0;
    |
  > |contract Ownable {
    |  address public owner;
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  function Ownable() public {
    |    owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner == address(0))
    |        throw;
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    if (newOwner == address(0))
    |        throw;
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(24)

[33mWarning[0m for DAO in contract 'PrivateInvestment':
    |    {
    |        TransferHappened(amount, logMsg, target, currentOwner);
  > |        if(! target.call.value(amount)() )
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(54)

[33mWarning[0m for LockedEther in contract 'PrivateInvestment':
    |}
    |
  > |contract PrivateInvestment is Ownable{
    |    event TransferHappened(
    |        uint amount,
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(28)

[33mWarning[0m for TODAmount in contract 'PrivateInvestment':
    |    {
    |        TransferHappened(amount, logMsg, target, currentOwner);
  > |        if(! target.call.value(amount)() )
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(54)

[33mWarning[0m for TODReceiver in contract 'PrivateInvestment':
    |    {
    |        TransferHappened(amount, logMsg, target, currentOwner);
  > |        if(! target.call.value(amount)() )
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(54)

[33mWarning[0m for UnhandledException in contract 'PrivateInvestment':
    |    {
    |        TransferHappened(amount, logMsg, target, currentOwner);
  > |        if(! target.call.value(amount)() )
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(54)

[33mWarning[0m for UnhandledException in contract 'PrivateInvestment':
    |        investors[msg.sender].investment -= amount;
    |        sumInvested -= amount; 
  > |        this.loggedTransfer(amount, "", msg.sender, owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(74)

[33mWarning[0m for UnhandledException in contract 'PrivateInvestment':
    |            throw;
    |        investors[msg.sender].lastDividend = sumDividend;
  > |        this.loggedTransfer(dividend, "Dividend payment", msg.sender, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(94)

[33mWarning[0m for UnhandledException in contract 'PrivateInvestment':
    |    
    |    function doTransfer(address target, uint amount) public onlyOwner {
  > |        this.loggedTransfer(amount, "Owner transfer", target, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateInvestment':
    |        investors[msg.sender].investment -= amount;
    |        sumInvested -= amount; 
  > |        this.loggedTransfer(amount, "", msg.sender, owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateInvestment':
    |            throw;
    |        investors[msg.sender].lastDividend = sumDividend;
  > |        this.loggedTransfer(dividend, "Dividend payment", msg.sender, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateInvestment':
    |    
    |    function doTransfer(address target, uint amount) public onlyOwner {
  > |        this.loggedTransfer(amount, "Owner transfer", target, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateInvestment':
    |    {
    |        TransferHappened(amount, logMsg, target, currentOwner);
  > |        if(! target.call.value(amount)() )
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'PrivateInvestment':
    |        {
    |            investors[msg.sender].investment += msg.value;
  > |            sumInvested += msg.value;
    |            // manually call payDividend() before reinvesting, because this resets dividend payments!
    |            investors[msg.sender].lastDividend = sumDividend;
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'PrivateInvestment':
    |        // no need to test, this will throw if amount > investment
    |        investors[msg.sender].investment -= amount;
  > |        sumInvested -= amount; 
    |        this.loggedTransfer(amount, "", msg.sender, owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateInvestment':
    |        if (msg.value >= minInvestment)
    |        {
  > |            investors[msg.sender].investment += msg.value;
    |            sumInvested += msg.value;
    |            // manually call payDividend() before reinvesting, because this resets dividend payments!
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateInvestment':
    |            sumInvested += msg.value;
    |            // manually call payDividend() before reinvesting, because this resets dividend payments!
  > |            investors[msg.sender].lastDividend = sumDividend;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateInvestment':
    |            throw;
    |        // no need to test, this will throw if amount > investment
  > |        investors[msg.sender].investment -= amount;
    |        sumInvested -= amount; 
    |        this.loggedTransfer(amount, "", msg.sender, owner);
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateInvestment':
    |        if (dividend == 0)
    |            throw;
  > |        investors[msg.sender].lastDividend = sumDividend;
    |        this.loggedTransfer(dividend, "Dividend payment", msg.sender, owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateInvestment':
    |    if (newOwner == address(0))
    |        throw;
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateInvestment':
    |    // OWNER FUNCTIONS TO DO BUSINESS
    |    function distributeDividends() public payable onlyOwner {
  > |        sumDividend += msg.value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateInvestment':
    |    
    |    function setMinInvestment(uint amount) public onlyOwner {
  > |        minInvestment = amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa0174f796d3b901adaa16cfbb589330462be0329.sol(107)


