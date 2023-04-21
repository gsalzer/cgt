Processing contract: /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol:CouponToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol:CouponTokenConfig
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol:ERC20Basic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol:Ownable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol:SwapContractCCTtoPDATA
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |contract ERC20Basic {}
    |contract ERC20 is ERC20Basic {}
  > |contract BasicToken is ERC20Basic {}
    |contract StandardToken is ERC20, BasicToken {}
    |contract Ownable {}
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(5)

[33mWarning[0m for LockedEther in contract 'CouponTokenConfig':
    |contract StandardToken is ERC20, BasicToken {}
    |contract Ownable {}
  > |contract CouponTokenConfig {}
    |contract CouponToken is StandardToken, Ownable, CouponTokenConfig {
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(8)

[33mWarning[0m for LockedEther in contract 'ERC20':
    |
    |contract ERC20Basic {}
  > |contract ERC20 is ERC20Basic {}
    |contract BasicToken is ERC20Basic {}
    |contract StandardToken is ERC20, BasicToken {}
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(4)

[33mWarning[0m for LockedEther in contract 'ERC20Basic':
    |pragma solidity ^0.4.24;
    |
  > |contract ERC20Basic {}
    |contract ERC20 is ERC20Basic {}
    |contract BasicToken is ERC20Basic {}
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(3)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |contract BasicToken is ERC20Basic {}
    |contract StandardToken is ERC20, BasicToken {}
  > |contract Ownable {}
    |contract CouponTokenConfig {}
    |contract CouponToken is StandardToken, Ownable, CouponTokenConfig {
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |contract ERC20 is ERC20Basic {}
    |contract BasicToken is ERC20Basic {}
  > |contract StandardToken is ERC20, BasicToken {}
    |contract Ownable {}
    |contract CouponTokenConfig {}
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(6)

[33mWarning[0m for LockedEther in contract 'SwapContractCCTtoPDATA':
    |}
    |
  > |contract SwapContractCCTtoPDATA {
    |    //storage
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |contract SwapContractCCTtoPDATA {
    |    //storage
  > |    address public owner;
    |    CouponToken public company_token;
    |
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |    //storage
    |    address public owner;
  > |    CouponToken public company_token;
    |
    |    address public PartnerAccount;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |    CouponToken public company_token;
    |
  > |    address public PartnerAccount;
    |    uint public originalBalance;
    |    uint public currentBalance;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |
    |    address public PartnerAccount;
  > |    uint public originalBalance;
    |    uint public currentBalance;
    |    uint public alreadyTransfered;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |    address public PartnerAccount;
    |    uint public originalBalance;
  > |    uint public currentBalance;
    |    uint public alreadyTransfered;
    |    uint public startDateOfPayments;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |    uint public originalBalance;
    |    uint public currentBalance;
  > |    uint public alreadyTransfered;
    |    uint public startDateOfPayments;
    |    uint public endDateOfPayments;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |    uint public currentBalance;
    |    uint public alreadyTransfered;
  > |    uint public startDateOfPayments;
    |    uint public endDateOfPayments;
    |    uint public periodOfOnePayments;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |    uint public alreadyTransfered;
    |    uint public startDateOfPayments;
  > |    uint public endDateOfPayments;
    |    uint public periodOfOnePayments;
    |    uint public limitPerPeriod;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |    uint public startDateOfPayments;
    |    uint public endDateOfPayments;
  > |    uint public periodOfOnePayments;
    |    uint public limitPerPeriod;
    |    uint public daysOfPayments;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |    uint public endDateOfPayments;
    |    uint public periodOfOnePayments;
  > |    uint public limitPerPeriod;
    |    uint public daysOfPayments;
    |
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |    uint public periodOfOnePayments;
    |    uint public limitPerPeriod;
  > |    uint public daysOfPayments;
    |
    |    //modifiers
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |
    |    /// @dev Get current balance of the contract
  > |    function getBalance()
    |        constant
    |        public
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |
    |
  > |    function setOwner(address _owner) 
    |        public 
    |        onlyOwner 
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'SwapContractCCTtoPDATA':
    |    }
    |  
  > |    function sendCurrentPayment() public {
    |        if (now > startDateOfPayments) {
    |            uint currentPeriod = (now - startDateOfPayments) / periodOfOnePayments;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(88)

[33mWarning[0m for UnhandledException in contract 'SwapContractCCTtoPDATA':
    |        returns(uint)
    |    {
  > |        return company_token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(74)

[33mWarning[0m for UnhandledException in contract 'SwapContractCCTtoPDATA':
    |            if (unsealedAmount > 0) {
    |                if (currentBalance >= unsealedAmount) {
  > |                    company_token.transfer(PartnerAccount, unsealedAmount);
    |                    alreadyTransfered += unsealedAmount;
    |                    currentBalance -= unsealedAmount;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(95)

[33mWarning[0m for UnhandledException in contract 'SwapContractCCTtoPDATA':
    |                    emit Transfer(PartnerAccount, unsealedAmount);
    |                } else {
  > |                    company_token.transfer(PartnerAccount, currentBalance);
    |                    alreadyTransfered += currentBalance;
    |                    currentBalance -= currentBalance;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(100)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SwapContractCCTtoPDATA':
    |        returns(uint)
    |    {
  > |        return company_token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SwapContractCCTtoPDATA':
    |            if (unsealedAmount > 0) {
    |                if (currentBalance >= unsealedAmount) {
  > |                    company_token.transfer(PartnerAccount, unsealedAmount);
    |                    alreadyTransfered += unsealedAmount;
    |                    currentBalance -= unsealedAmount;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(95)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SwapContractCCTtoPDATA':
    |                    emit Transfer(PartnerAccount, unsealedAmount);
    |                } else {
  > |                    company_token.transfer(PartnerAccount, currentBalance);
    |                    alreadyTransfered += currentBalance;
    |                    currentBalance -= currentBalance;
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'SwapContractCCTtoPDATA':
    |                if (currentBalance >= unsealedAmount) {
    |                    company_token.transfer(PartnerAccount, unsealedAmount);
  > |                    alreadyTransfered += unsealedAmount;
    |                    currentBalance -= unsealedAmount;
    |                    emit Transfer(PartnerAccount, unsealedAmount);
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'SwapContractCCTtoPDATA':
    |                    company_token.transfer(PartnerAccount, unsealedAmount);
    |                    alreadyTransfered += unsealedAmount;
  > |                    currentBalance -= unsealedAmount;
    |                    emit Transfer(PartnerAccount, unsealedAmount);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'SwapContractCCTtoPDATA':
    |                } else {
    |                    company_token.transfer(PartnerAccount, currentBalance);
  > |                    alreadyTransfered += currentBalance;
    |                    currentBalance -= currentBalance;
    |                    emit Transfer(PartnerAccount, currentBalance);
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'SwapContractCCTtoPDATA':
    |                    company_token.transfer(PartnerAccount, currentBalance);
    |                    alreadyTransfered += currentBalance;
  > |                    currentBalance -= currentBalance;
    |                    emit Transfer(PartnerAccount, currentBalance);
    |                }
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'SwapContractCCTtoPDATA':
    |        require(_owner != 0);
    |     
  > |        owner = _owner;
    |        emit OwnerChanged(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x30f309f301ef3c5d2a2dcdad27941c5e783df32e.sol(84)


