Processing contract: /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol:ScamStamp
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol:ScamStampToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'ScamStamp':
    |    flaggerInsurance[msg.sender][scammer] += insurance;
    |    contractsInsuranceFee[msg.sender][scammer] += ownersFee;
  > |    theScamStampToken.transfer(scammer, numberOfTokens);
    |    uint256 q = mul(reliefRatio, mul(msg.value, pricePerUnit));
    |    MarkedAsScam(scammer, msg.sender, q);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(173)

[33mWarning[0m for DAO in contract 'ScamStamp':
    |        totalScammedQuantity -= flaggedQuantity[scammer][msg.sender];
    |        flaggedQuantity[scammer][msg.sender] = 0;
  > |        theScamStampToken.transferBack(scammer, numberOfTokensToForgive);
    |
    |        msg.sender.transfer(insurance);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(190)

[33mWarning[0m for DAO in contract 'ScamStamp':
    |        }
    |        owner.transfer(contractFeeAmount);
  > |        theScamStampToken.transferBack(scammer, numberOfTotalTokensToForgive);
    |
    |        if(forgivenessAmount > 0){
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(284)

[31mViolation[0m for DAOConstantGas in contract 'ScamStamp':
    |    uint256 ownersFee = div( mul(msg.value, contractFeePercentage), 100 );//mul(msg.value, div(contractFeePercentage, 100));
    |    uint256 insurance = msg.value - ownersFee;
  > |    owner.transfer(ownersFee);
    |    flaggerInsurance[msg.sender][scammer] += insurance;
    |    contractsInsuranceFee[msg.sender][scammer] += ownersFee;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(170)

[33mWarning[0m for DAOConstantGas in contract 'ScamStamp':
    |        theScamStampToken.transferBack(scammer, numberOfTokensToForgive);
    |
  > |        msg.sender.transfer(insurance);
    |        Forgived(scammer, msg.sender, insurance+hadFee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(192)

[33mWarning[0m for DAOConstantGas in contract 'ScamStamp':
    |                    totalRepaidQuantity += forgivenessAmount;
    |                    totalScammedRepaid[scammer] += forgivenessAmount;
  > |                    forgivedBy.transfer(forgivenessAmount);
    |                    PartiallyForgived(scammer, forgivedBy, forgivenessAmount);
    |                    forgivenessAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(263)

[33mWarning[0m for DAOConstantGas in contract 'ScamStamp':
    |            }
    |        }
  > |        owner.transfer(contractFeeAmount);
    |        theScamStampToken.transferBack(scammer, numberOfTotalTokensToForgive);
    |
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(283)

[33mWarning[0m for DAOConstantGas in contract 'ScamStamp':
    |
    |        if(forgivenessAmount > 0){
  > |            msg.sender.transfer(forgivenessAmount);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(287)

[33mWarning[0m for DAOConstantGas in contract 'ScamStamp':
    |    event DonationReceived(address by, uint256 amount);
    |    function donate() payable {
  > |        owner.transfer(msg.value);
    |        DonationReceived(msg.sender, msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(293)

[31mViolation[0m for MissingInputValidation in contract 'ScamStamp':
    |uint256 public reliefRatio = 10;
    |//how many times an address has been marked as SCAM
  > |mapping (address => uint256) public scamFlags;
    |//contract statistics.
    |uint public totalNumberOfScammers = 0;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'ScamStamp':
    |mapping (address => address[]) flaggedIndex;
    |//how much wei was the scammer been marked for.
  > |mapping (address => uint256) public totalScammed;
    |//how much wei did the scammer repaid
    |mapping (address => uint256) public totalScammedRepaid;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'ScamStamp':
    |mapping (address => uint256) public totalScammed;
    |//how much wei did the scammer repaid
  > |mapping (address => uint256) public totalScammedRepaid;
    |
    |function ScamStamp() {
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(149)

[31mViolation[0m for MissingInputValidation in contract 'ScamStamp':
    |//unless the scammer already started to pay its debt
    |
  > |function forgiveIt(address scammer) {
    |    if(flaggerInsurance[msg.sender][scammer] > 0){
    |        uint256 insurance = flaggerInsurance[msg.sender][scammer];
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(180)

[31mViolation[0m for MissingInputValidation in contract 'ScamStamp':
    |}
    |//forgiveMeOnBehalfOf - somebody else can pay a scammer address debt (same as above)
  > |function forgiveMeOnBehalfOf(address scammer) payable addressToBeAScammer(scammer) returns (bool success){
    |
    |        forgiveThis(scammer);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |}
    |
  > |function mul(uint a, uint b) internal returns (uint) {
    |uint c = a * b;
    |require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |}
    |
  > |function div(uint a, uint b) internal returns (uint) {
    |require(b > 0);
    |uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |
    |
  > |address public owner;
    |//the address of the ScamStampToken created by this contract
    |address public scamStampTokenAddress;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |address public owner;
    |//the address of the ScamStampToken created by this contract
  > |address public scamStampTokenAddress;
    |//the actual ScamStampToken
    |ScamStampToken theScamStampToken; 
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |//the fee is 2% of the amount sent.
    |//the fee is directly sent to the owner of this contract
  > |uint public contractFeePercentage = 2;
    |
    |//the price for 1 ScamStapToken is 1 finney
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |
    |//the price for 1 ScamStapToken is 1 finney
  > |uint256 public pricePerUnit = 1 finney;
    |//for a address to lose the ScamStampTokens it must pay a reliefRatio per token
    |//for each 1 token that it holds it must pay 10 finney to make the token dissapear from they account
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |//for a address to lose the ScamStampTokens it must pay a reliefRatio per token
    |//for each 1 token that it holds it must pay 10 finney to make the token dissapear from they account
  > |uint256 public reliefRatio = 10;
    |//how many times an address has been marked as SCAM
    |mapping (address => uint256) public scamFlags;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |mapping (address => uint256) public scamFlags;
    |//contract statistics.
  > |uint public totalNumberOfScammers = 0;
    |uint public totalScammedQuantity = 0;
    |uint public totalRepaidQuantity = 0;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |//contract statistics.
    |uint public totalNumberOfScammers = 0;
  > |uint public totalScammedQuantity = 0;
    |uint public totalRepaidQuantity = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |uint public totalNumberOfScammers = 0;
    |uint public totalScammedQuantity = 0;
  > |uint public totalRepaidQuantity = 0;
    |
    |mapping (address => mapping(address => uint256)) flaggedQuantity;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |    }
    |}
  > |function updateFlagCount(address from, address scammer, uint256 quantity) private{
    |    scamFlags[scammer] += 1;
    |    if(scamFlags[scammer] == 1){
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |
    |
  > |function addAddressToIndex(address scammer, address theAddressToIndex) private returns(bool success){
    |    bool addressFound = false;
    |    for(uint i = 0; i < flaggedIndex[scammer].length; i++){
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |//If the amount sent to this function is greater than the amount 
    |//that is needed to cover or debt is sent back to the scammer.
  > |function forgiveMe() payable toBeAScammer returns (bool success){
    |    address scammer = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |        return true;
    |    }
  > |    function forgiveThis(address scammer) private returns (bool success){
    |        uint256 forgivenessAmount = msg.value;
    |        uint256 contractFeeAmount =  div(mul(forgivenessAmount, contractFeePercentage), 100); 
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(250)

[33mWarning[0m for MissingInputValidation in contract 'ScamStamp':
    |    }
    |    event DonationReceived(address by, uint256 amount);
  > |    function donate() payable {
    |        owner.transfer(msg.value);
    |        DonationReceived(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(292)

[33mWarning[0m for TODReceiver in contract 'ScamStamp':
    |        theScamStampToken.transferBack(scammer, numberOfTokensToForgive);
    |
  > |        msg.sender.transfer(insurance);
    |        Forgived(scammer, msg.sender, insurance+hadFee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(192)

[33mWarning[0m for TODReceiver in contract 'ScamStamp':
    |
    |        if(forgivenessAmount > 0){
  > |            msg.sender.transfer(forgivenessAmount);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(287)

[33mWarning[0m for TODReceiver in contract 'ScamStamp':
    |    event DonationReceived(address by, uint256 amount);
    |    function donate() payable {
  > |        owner.transfer(msg.value);
    |        DonationReceived(msg.sender, msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(293)

[33mWarning[0m for UnhandledException in contract 'ScamStamp':
    |    uint256 ownersFee = div( mul(msg.value, contractFeePercentage), 100 );//mul(msg.value, div(contractFeePercentage, 100));
    |    uint256 insurance = msg.value - ownersFee;
  > |    owner.transfer(ownersFee);
    |    flaggerInsurance[msg.sender][scammer] += insurance;
    |    contractsInsuranceFee[msg.sender][scammer] += ownersFee;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(170)

[33mWarning[0m for UnhandledException in contract 'ScamStamp':
    |    flaggerInsurance[msg.sender][scammer] += insurance;
    |    contractsInsuranceFee[msg.sender][scammer] += ownersFee;
  > |    theScamStampToken.transfer(scammer, numberOfTokens);
    |    uint256 q = mul(reliefRatio, mul(msg.value, pricePerUnit));
    |    MarkedAsScam(scammer, msg.sender, q);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(173)

[33mWarning[0m for UnhandledException in contract 'ScamStamp':
    |        totalScammedQuantity -= flaggedQuantity[scammer][msg.sender];
    |        flaggedQuantity[scammer][msg.sender] = 0;
  > |        theScamStampToken.transferBack(scammer, numberOfTokensToForgive);
    |
    |        msg.sender.transfer(insurance);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(190)

[33mWarning[0m for UnhandledException in contract 'ScamStamp':
    |        theScamStampToken.transferBack(scammer, numberOfTokensToForgive);
    |
  > |        msg.sender.transfer(insurance);
    |        Forgived(scammer, msg.sender, insurance+hadFee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(192)

[33mWarning[0m for UnhandledException in contract 'ScamStamp':
    |                    totalRepaidQuantity += forgivenessAmount;
    |                    totalScammedRepaid[scammer] += forgivenessAmount;
  > |                    forgivedBy.transfer(forgivenessAmount);
    |                    PartiallyForgived(scammer, forgivedBy, forgivenessAmount);
    |                    forgivenessAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(263)

[33mWarning[0m for UnhandledException in contract 'ScamStamp':
    |                    totalScammedRepaid[scammer] += toForgive;
    |                    totalRepaidQuantity += toForgive;
  > |                    forgivedBy.transfer(toForgive);
    |                    Forgived(scammer, forgivedBy, toForgive);
    |                }
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(272)

[33mWarning[0m for UnhandledException in contract 'ScamStamp':
    |            }
    |        }
  > |        owner.transfer(contractFeeAmount);
    |        theScamStampToken.transferBack(scammer, numberOfTotalTokensToForgive);
    |
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(283)

[33mWarning[0m for UnhandledException in contract 'ScamStamp':
    |        }
    |        owner.transfer(contractFeeAmount);
  > |        theScamStampToken.transferBack(scammer, numberOfTotalTokensToForgive);
    |
    |        if(forgivenessAmount > 0){
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(284)

[33mWarning[0m for UnhandledException in contract 'ScamStamp':
    |
    |        if(forgivenessAmount > 0){
  > |            msg.sender.transfer(forgivenessAmount);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(287)

[33mWarning[0m for UnhandledException in contract 'ScamStamp':
    |    event DonationReceived(address by, uint256 amount);
    |    function donate() payable {
  > |        owner.transfer(msg.value);
    |        DonationReceived(msg.sender, msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |
    |
  > |contract ScamStampToken {
    |    //The Scam Stamp Token is intended to mark an address as SCAM.
    |    //this token is used by the contract ScamStamp defined bellow
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |}
    |function updateFlagCount(address from, address scammer, uint256 quantity) private{
  > |    scamFlags[scammer] += 1;
    |    if(scamFlags[scammer] == 1){
    |        totalNumberOfScammers += 1;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |    scamFlags[scammer] += 1;
    |    if(scamFlags[scammer] == 1){
  > |        totalNumberOfScammers += 1;
    |    }
    |    uint256 q = mul(reliefRatio, mul(quantity, pricePerUnit));
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(199)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |    }
    |    uint256 q = mul(reliefRatio, mul(quantity, pricePerUnit));
  > |    flaggedQuantity[scammer][from] += q;
    |    flaggedRepaid[scammer][from] = 0;
    |    totalScammed[scammer] += q;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |    uint256 q = mul(reliefRatio, mul(quantity, pricePerUnit));
    |    flaggedQuantity[scammer][from] += q;
  > |    flaggedRepaid[scammer][from] = 0;
    |    totalScammed[scammer] += q;
    |    totalScammedQuantity += q;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(203)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |    flaggedQuantity[scammer][from] += q;
    |    flaggedRepaid[scammer][from] = 0;
  > |    totalScammed[scammer] += q;
    |    totalScammedQuantity += q;
    |    addAddressToIndex(scammer, from);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(204)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |    flaggedRepaid[scammer][from] = 0;
    |    totalScammed[scammer] += q;
  > |    totalScammedQuantity += q;
    |    addAddressToIndex(scammer, from);
    |}
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |    }
    |    if(!addressFound){
  > |        flaggedIndex[scammer].push(theAddressToIndex);
    |    }
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |            if(toForgive > 0){
    |                if(toForgive >= forgivenessAmount){
  > |                    flaggedRepaid[scammer][forgivedBy] += forgivenessAmount;
    |                    totalRepaidQuantity += forgivenessAmount;
    |                    totalScammedRepaid[scammer] += forgivenessAmount;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |                if(toForgive >= forgivenessAmount){
    |                    flaggedRepaid[scammer][forgivedBy] += forgivenessAmount;
  > |                    totalRepaidQuantity += forgivenessAmount;
    |                    totalScammedRepaid[scammer] += forgivenessAmount;
    |                    forgivedBy.transfer(forgivenessAmount);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |                    flaggedRepaid[scammer][forgivedBy] += forgivenessAmount;
    |                    totalRepaidQuantity += forgivenessAmount;
  > |                    totalScammedRepaid[scammer] += forgivenessAmount;
    |                    forgivedBy.transfer(forgivenessAmount);
    |                    PartiallyForgived(scammer, forgivedBy, forgivenessAmount);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(262)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |                }else{
    |                    forgivenessAmount -= toForgive;
  > |                    flaggedRepaid[scammer][forgivedBy] += toForgive;
    |                    totalScammedRepaid[scammer] += toForgive;
    |                    totalRepaidQuantity += toForgive;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(269)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |                    forgivenessAmount -= toForgive;
    |                    flaggedRepaid[scammer][forgivedBy] += toForgive;
  > |                    totalScammedRepaid[scammer] += toForgive;
    |                    totalRepaidQuantity += toForgive;
    |                    forgivedBy.transfer(toForgive);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |                    flaggedRepaid[scammer][forgivedBy] += toForgive;
    |                    totalScammedRepaid[scammer] += toForgive;
  > |                    totalRepaidQuantity += toForgive;
    |                    forgivedBy.transfer(toForgive);
    |                    Forgived(scammer, forgivedBy, toForgive);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(271)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |                    uint256 insurance = flaggerInsurance[forgivedBy][scammer];
    |                    contractFeeAmount += insurance;
  > |                    flaggerInsurance[forgivedBy][scammer] = 0;
    |                    contractsInsuranceFee[forgivedBy][scammer] = 0;
    |                }
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(278)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamStamp':
    |                    contractFeeAmount += insurance;
    |                    flaggerInsurance[forgivedBy][scammer] = 0;
  > |                    contractsInsuranceFee[forgivedBy][scammer] = 0;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(279)

[33mWarning[0m for LockedEther in contract 'ScamStampToken':
    |
    |
  > |contract ScamStampToken {
    |    //The Scam Stamp Token is intended to mark an address as SCAM.
    |    //this token is used by the contract ScamStamp defined bellow
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamStampToken':
    |        if(_amount >= 0){
    |            if(balances[msg.sender] >= _amount){
  > |                balances[msg.sender] -= _amount;
    |                balances[_to] += _amount;
    |                Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamStampToken':
    |            if(balances[msg.sender] >= _amount){
    |                balances[msg.sender] -= _amount;
  > |                balances[_to] += _amount;
    |                Transfer(msg.sender, _to, _amount);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamStampToken':
    |                return true;
    |                }else{
  > |                    totalSupply += _amount + _amount;   
    |                    balances[msg.sender] += _amount + _amount;
    |                    balances[msg.sender] -= _amount;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamStampToken':
    |                }else{
    |                    totalSupply += _amount + _amount;   
  > |                    balances[msg.sender] += _amount + _amount;
    |                    balances[msg.sender] -= _amount;
    |                    balances[_to] += _amount;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamStampToken':
    |                    totalSupply += _amount + _amount;   
    |                    balances[msg.sender] += _amount + _amount;
  > |                    balances[msg.sender] -= _amount;
    |                    balances[_to] += _amount;
    |                    Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamStampToken':
    |                    balances[msg.sender] += _amount + _amount;
    |                    balances[msg.sender] -= _amount;
  > |                    balances[_to] += _amount;
    |                    Transfer(msg.sender, _to, _amount);
    |                    return true;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamStampToken':
    |        if(_amount >= 0){
    |            if(balances[_from] >= _amount){
  > |                balances[_from] -= _amount;
    |                balances[owner] += _amount;
    |                Transfer(_from, owner, _amount);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamStampToken':
    |            if(balances[_from] >= _amount){
    |                balances[_from] -= _amount;
  > |                balances[owner] += _amount;
    |                Transfer(_from, owner, _amount);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamStampToken':
    |            }else{
    |                _amount = balances[_from];
  > |                balances[_from] -= _amount;
    |                balances[owner] += _amount;
    |                Transfer(_from, owner, _amount);
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamStampToken':
    |                _amount = balances[_from];
    |                balances[_from] -= _amount;
  > |                balances[owner] += _amount;
    |                Transfer(_from, owner, _amount);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x017a5d8d82afaa22bc29d75013d6ff3656e90851.sol(60)


