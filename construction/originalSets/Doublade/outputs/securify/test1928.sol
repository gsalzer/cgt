Processing contract: /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol:DividendDistributor
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'DividendDistributor':
    |    function loggedTransfer(uint amount, bytes32 message, address target, address currentOwner) protected
    |    {
  > |        if(! target.call.value(amount)() )
    |            throw;
    |        Transfer(amount, message, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(53)

[33mWarning[0m for LockedEther in contract 'DividendDistributor':
    |}
    |
  > |contract DividendDistributor is Ownable{
    |    event Transfer(
    |        uint amount,
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(28)

[33mWarning[0m for TODAmount in contract 'DividendDistributor':
    |    function loggedTransfer(uint amount, bytes32 message, address target, address currentOwner) protected
    |    {
  > |        if(! target.call.value(amount)() )
    |            throw;
    |        Transfer(amount, message, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(53)

[33mWarning[0m for TODReceiver in contract 'DividendDistributor':
    |    function loggedTransfer(uint amount, bytes32 message, address target, address currentOwner) protected
    |    {
  > |        if(! target.call.value(amount)() )
    |            throw;
    |        Transfer(amount, message, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(53)

[33mWarning[0m for UnhandledException in contract 'DividendDistributor':
    |    function loggedTransfer(uint amount, bytes32 message, address target, address currentOwner) protected
    |    {
  > |        if(! target.call.value(amount)() )
    |            throw;
    |        Transfer(amount, message, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(53)

[33mWarning[0m for UnhandledException in contract 'DividendDistributor':
    |        investors[msg.sender].investment -= amount;
    |        sumInvested -= amount; 
  > |        this.loggedTransfer(amount, "", msg.sender, owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(74)

[33mWarning[0m for UnhandledException in contract 'DividendDistributor':
    |            throw;
    |        investors[msg.sender].lastDividend = sumDividend;
  > |        this.loggedTransfer(dividend, "Dividend payment", msg.sender, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(94)

[33mWarning[0m for UnhandledException in contract 'DividendDistributor':
    |    
    |    function doTransfer(address target, uint amount) public onlyOwner {
  > |        this.loggedTransfer(amount, "Owner transfer", target, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DividendDistributor':
    |        investors[msg.sender].investment -= amount;
    |        sumInvested -= amount; 
  > |        this.loggedTransfer(amount, "", msg.sender, owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DividendDistributor':
    |            throw;
    |        investors[msg.sender].lastDividend = sumDividend;
  > |        this.loggedTransfer(dividend, "Dividend payment", msg.sender, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DividendDistributor':
    |    
    |    function doTransfer(address target, uint amount) public onlyOwner {
  > |        this.loggedTransfer(amount, "Owner transfer", target, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DividendDistributor':
    |    function loggedTransfer(uint amount, bytes32 message, address target, address currentOwner) protected
    |    {
  > |        if(! target.call.value(amount)() )
    |            throw;
    |        Transfer(amount, message, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'DividendDistributor':
    |    
    |    function PrivateInvestment() public{ 
  > |        minInvestment = 0.4 ether;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'DividendDistributor':
    |        {
    |            investors[msg.sender].investment += msg.value;
  > |            sumInvested += msg.value;
    |            // manually call payDividend() before reinvesting, because this resets dividend payments!
    |            investors[msg.sender].lastDividend = sumDividend;
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'DividendDistributor':
    |        // no need to test, this will throw if amount > investment
    |        investors[msg.sender].investment -= amount;
  > |        sumInvested -= amount; 
    |        this.loggedTransfer(amount, "", msg.sender, owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributor':
    |        if (msg.value >= minInvestment)
    |        {
  > |            investors[msg.sender].investment += msg.value;
    |            sumInvested += msg.value;
    |            // manually call payDividend() before reinvesting, because this resets dividend payments!
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributor':
    |            sumInvested += msg.value;
    |            // manually call payDividend() before reinvesting, because this resets dividend payments!
  > |            investors[msg.sender].lastDividend = sumDividend;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributor':
    |            throw;
    |        // no need to test, this will throw if amount > investment
  > |        investors[msg.sender].investment -= amount;
    |        sumInvested -= amount; 
    |        this.loggedTransfer(amount, "", msg.sender, owner);
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributor':
    |        if (dividend == 0)
    |            throw;
  > |        investors[msg.sender].lastDividend = sumDividend;
    |        this.loggedTransfer(dividend, "Dividend payment", msg.sender, owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributor':
    |    if (newOwner == address(0))
    |        throw;
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributor':
    |    // OWNER FUNCTIONS TO DO BUSINESS
    |    function distributeDividends() public payable onlyOwner {
  > |        sumDividend += msg.value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributor':
    |    
    |    function setMinInvestment(uint amount) public onlyOwner {
  > |        minInvestment = amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(107)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.0;
    |
  > |contract Ownable {
    |  address public owner;
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  function Ownable() public {
    |    owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner == address(0))
    |        throw;
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    if (newOwner == address(0))
    |        throw;
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7bc51b19abe2cfb15d58f845dad027feab01bfa0.sol(24)


