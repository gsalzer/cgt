Processing contract: /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol:ERC20Basic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol:OpiriaToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol:Ownable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol:Pausable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol:SwapContractPDATAtoCCT
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |contract ERC20 is ERC20Basic {}
    |contract Ownable {}
  > |contract BasicToken is ERC20Basic {}
    |contract StandardToken is ERC20, BasicToken {}
    |contract Pausable is Ownable {}
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(6)

[33mWarning[0m for LockedEther in contract 'ERC20':
    |
    |contract ERC20Basic {}
  > |contract ERC20 is ERC20Basic {}
    |contract Ownable {}
    |contract BasicToken is ERC20Basic {}
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(4)

[33mWarning[0m for LockedEther in contract 'ERC20Basic':
    |pragma solidity ^0.4.24;
    |
  > |contract ERC20Basic {}
    |contract ERC20 is ERC20Basic {}
    |contract Ownable {}
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(3)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |contract Pausable is Ownable {}
    |contract PausableToken is StandardToken, Pausable {}
  > |contract MintableToken is StandardToken, Ownable {}
    |
    |contract OpiriaToken is MintableToken, PausableToken {
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(10)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |contract ERC20Basic {}
    |contract ERC20 is ERC20Basic {}
  > |contract Ownable {}
    |contract BasicToken is ERC20Basic {}
    |contract StandardToken is ERC20, BasicToken {}
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(5)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |contract BasicToken is ERC20Basic {}
    |contract StandardToken is ERC20, BasicToken {}
  > |contract Pausable is Ownable {}
    |contract PausableToken is StandardToken, Pausable {}
    |contract MintableToken is StandardToken, Ownable {}
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(8)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |contract StandardToken is ERC20, BasicToken {}
    |contract Pausable is Ownable {}
  > |contract PausableToken is StandardToken, Pausable {}
    |contract MintableToken is StandardToken, Ownable {}
    |
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(9)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |contract Ownable {}
    |contract BasicToken is ERC20Basic {}
  > |contract StandardToken is ERC20, BasicToken {}
    |contract Pausable is Ownable {}
    |contract PausableToken is StandardToken, Pausable {}
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(7)

[33mWarning[0m for LockedEther in contract 'SwapContractPDATAtoCCT':
    |}
    |
  > |contract SwapContractPDATAtoCCT {
    |  //storage
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |contract SwapContractPDATAtoCCT {
    |  //storage
  > |  address public owner;
    |  OpiriaToken public company_token;
    |
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |  //storage
    |  address public owner;
  > |  OpiriaToken public company_token;
    |
    |  address public PartnerAccount;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |  OpiriaToken public company_token;
    |
  > |  address public PartnerAccount;
    |  uint public originalBalance;
    |  uint public currentBalance;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |
    |  address public PartnerAccount;
  > |  uint public originalBalance;
    |  uint public currentBalance;
    |  uint public alreadyTransfered;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |  address public PartnerAccount;
    |  uint public originalBalance;
  > |  uint public currentBalance;
    |  uint public alreadyTransfered;
    |  uint public startDateOfPayments;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |  uint public originalBalance;
    |  uint public currentBalance;
  > |  uint public alreadyTransfered;
    |  uint public startDateOfPayments;
    |  uint public endDateOfPayments;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |  uint public currentBalance;
    |  uint public alreadyTransfered;
  > |  uint public startDateOfPayments;
    |  uint public endDateOfPayments;
    |  uint public periodOfOnePayments;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |  uint public alreadyTransfered;
    |  uint public startDateOfPayments;
  > |  uint public endDateOfPayments;
    |  uint public periodOfOnePayments;
    |  uint public limitPerPeriod;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |  uint public startDateOfPayments;
    |  uint public endDateOfPayments;
  > |  uint public periodOfOnePayments;
    |  uint public limitPerPeriod;
    |  uint public daysOfPayments;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |  uint public endDateOfPayments;
    |  uint public periodOfOnePayments;
  > |  uint public limitPerPeriod;
    |  uint public daysOfPayments;
    |
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |  uint public periodOfOnePayments;
    |  uint public limitPerPeriod;
  > |  uint public daysOfPayments;
    |
    |  //modifiers
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |
    |  /// @dev Get current balance of the contract
  > |  function getBalance()
    |    constant
    |    public
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |
    |
  > |  function setOwner(address _owner) 
    |    public 
    |    onlyOwner 
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractPDATAtoCCT':
    |  }
    |  
  > |  function sendCurrentPayment() public {
    |    if (now > startDateOfPayments) {
    |      uint currentPeriod = (now - startDateOfPayments) / periodOfOnePayments;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(91)

[33mWarning[0m for UnhandledException in contract 'SwapContractPDATAtoCCT':
    |    returns(uint)
    |  {
  > |    return company_token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(77)

[33mWarning[0m for UnhandledException in contract 'SwapContractPDATAtoCCT':
    |      if (unsealedAmount > 0) {
    |        if (currentBalance >= unsealedAmount) {
  > |          company_token.transfer(PartnerAccount, unsealedAmount);
    |          alreadyTransfered += unsealedAmount;
    |          currentBalance -= unsealedAmount;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(98)

[33mWarning[0m for UnhandledException in contract 'SwapContractPDATAtoCCT':
    |          emit Transfer(PartnerAccount, unsealedAmount);
    |        } else {
  > |          company_token.transfer(PartnerAccount, currentBalance);
    |          alreadyTransfered += currentBalance;
    |          currentBalance -= currentBalance;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(103)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SwapContractPDATAtoCCT':
    |    returns(uint)
    |  {
  > |    return company_token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SwapContractPDATAtoCCT':
    |      if (unsealedAmount > 0) {
    |        if (currentBalance >= unsealedAmount) {
  > |          company_token.transfer(PartnerAccount, unsealedAmount);
    |          alreadyTransfered += unsealedAmount;
    |          currentBalance -= unsealedAmount;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(98)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SwapContractPDATAtoCCT':
    |          emit Transfer(PartnerAccount, unsealedAmount);
    |        } else {
  > |          company_token.transfer(PartnerAccount, currentBalance);
    |          alreadyTransfered += currentBalance;
    |          currentBalance -= currentBalance;
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'SwapContractPDATAtoCCT':
    |        if (currentBalance >= unsealedAmount) {
    |          company_token.transfer(PartnerAccount, unsealedAmount);
  > |          alreadyTransfered += unsealedAmount;
    |          currentBalance -= unsealedAmount;
    |          emit Transfer(PartnerAccount, unsealedAmount);
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'SwapContractPDATAtoCCT':
    |          company_token.transfer(PartnerAccount, unsealedAmount);
    |          alreadyTransfered += unsealedAmount;
  > |          currentBalance -= unsealedAmount;
    |          emit Transfer(PartnerAccount, unsealedAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'SwapContractPDATAtoCCT':
    |        } else {
    |          company_token.transfer(PartnerAccount, currentBalance);
  > |          alreadyTransfered += currentBalance;
    |          currentBalance -= currentBalance;
    |          emit Transfer(PartnerAccount, currentBalance);
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'SwapContractPDATAtoCCT':
    |          company_token.transfer(PartnerAccount, currentBalance);
    |          alreadyTransfered += currentBalance;
  > |          currentBalance -= currentBalance;
    |          emit Transfer(PartnerAccount, currentBalance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'SwapContractPDATAtoCCT':
    |    require(_owner != 0);
    |    
  > |    owner = _owner;
    |    emit OwnerChanged(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe120e22c3374e4f070d72601c48fc8e6e02fd188.sol(87)


