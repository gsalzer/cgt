Processing contract: /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol:DividendDistributorv2
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'DividendDistributorv2':
    |    function loggedTransfer(uint amount, bytes32 message, address target, address currentOwner) protected
    |    {
  > |        if(! target.call.value(amount)() )
    |            throw;
    |        Transfer(amount, message, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(53)

[33mWarning[0m for LockedEther in contract 'DividendDistributorv2':
    |}
    |
  > |contract DividendDistributorv2 is Ownable{
    |    event Transfer(
    |        uint amount,
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(28)

[33mWarning[0m for TODAmount in contract 'DividendDistributorv2':
    |    function loggedTransfer(uint amount, bytes32 message, address target, address currentOwner) protected
    |    {
  > |        if(! target.call.value(amount)() )
    |            throw;
    |        Transfer(amount, message, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(53)

[33mWarning[0m for TODReceiver in contract 'DividendDistributorv2':
    |    function loggedTransfer(uint amount, bytes32 message, address target, address currentOwner) protected
    |    {
  > |        if(! target.call.value(amount)() )
    |            throw;
    |        Transfer(amount, message, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(53)

[33mWarning[0m for UnhandledException in contract 'DividendDistributorv2':
    |    function loggedTransfer(uint amount, bytes32 message, address target, address currentOwner) protected
    |    {
  > |        if(! target.call.value(amount)() )
    |            throw;
    |        Transfer(amount, message, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(53)

[33mWarning[0m for UnhandledException in contract 'DividendDistributorv2':
    |        investors[msg.sender].investment -= amount;
    |        sumInvested -= amount; 
  > |        this.loggedTransfer(amount, "", msg.sender, owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(74)

[33mWarning[0m for UnhandledException in contract 'DividendDistributorv2':
    |            throw;
    |        investors[msg.sender].lastDividend = sumDividend;
  > |        this.loggedTransfer(dividend, "Dividend payment", msg.sender, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(94)

[33mWarning[0m for UnhandledException in contract 'DividendDistributorv2':
    |    
    |    function doTransfer(address target, uint amount) public onlyOwner {
  > |        this.loggedTransfer(amount, "Owner transfer", target, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DividendDistributorv2':
    |        investors[msg.sender].investment -= amount;
    |        sumInvested -= amount; 
  > |        this.loggedTransfer(amount, "", msg.sender, owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DividendDistributorv2':
    |            throw;
    |        investors[msg.sender].lastDividend = sumDividend;
  > |        this.loggedTransfer(dividend, "Dividend payment", msg.sender, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DividendDistributorv2':
    |    
    |    function doTransfer(address target, uint amount) public onlyOwner {
  > |        this.loggedTransfer(amount, "Owner transfer", target, owner);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DividendDistributorv2':
    |    function loggedTransfer(uint amount, bytes32 message, address target, address currentOwner) protected
    |    {
  > |        if(! target.call.value(amount)() )
    |            throw;
    |        Transfer(amount, message, target, currentOwner);
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'DividendDistributorv2':
    |        {
    |            investors[msg.sender].investment += msg.value;
  > |            sumInvested += msg.value;
    |            // manually call payDividend() before reinvesting, because this resets dividend payments!
    |            investors[msg.sender].lastDividend = sumDividend;
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'DividendDistributorv2':
    |        // no need to test, this will throw if amount > investment
    |        investors[msg.sender].investment -= amount;
  > |        sumInvested -= amount; 
    |        this.loggedTransfer(amount, "", msg.sender, owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributorv2':
    |        if (msg.value >= minInvestment)
    |        {
  > |            investors[msg.sender].investment += msg.value;
    |            sumInvested += msg.value;
    |            // manually call payDividend() before reinvesting, because this resets dividend payments!
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributorv2':
    |            sumInvested += msg.value;
    |            // manually call payDividend() before reinvesting, because this resets dividend payments!
  > |            investors[msg.sender].lastDividend = sumDividend;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributorv2':
    |            throw;
    |        // no need to test, this will throw if amount > investment
  > |        investors[msg.sender].investment -= amount;
    |        sumInvested -= amount; 
    |        this.loggedTransfer(amount, "", msg.sender, owner);
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributorv2':
    |        if (dividend == 0)
    |            throw;
  > |        investors[msg.sender].lastDividend = sumDividend;
    |        this.loggedTransfer(dividend, "Dividend payment", msg.sender, owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributorv2':
    |    if (newOwner == address(0))
    |        throw;
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributorv2':
    |    // OWNER FUNCTIONS TO DO BUSINESS
    |    function distributeDividends() public payable onlyOwner {
  > |        sumDividend += msg.value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'DividendDistributorv2':
    |    
    |    function setMinInvestment(uint amount) public onlyOwner {
  > |        minInvestment = amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(107)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.0;
    |
  > |contract Ownable {
    |  address public owner;
    |  function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  function Ownable() public {
    |    owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner == address(0))
    |        throw;
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    if (newOwner == address(0))
    |        throw;
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe63760e74ffd44ce7abdb7ca2e7fa01b357df460.sol(24)


