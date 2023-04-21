Processing contract: /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol:ScamSeal
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol:ScamSealToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'ScamSeal':
    |    flaggerInsurance[msg.sender][scammer] += insurance;
    |    contractsInsuranceFee[msg.sender][scammer] += ownersFee;
  > |    theScamSealToken.transfer(scammer, numberOfTokens);
    |    uint256 q = mul(reliefRatio, mul(msg.value, pricePerUnit));
    |    MarkedAsScam(scammer, msg.sender, q);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(172)

[33mWarning[0m for DAO in contract 'ScamSeal':
    |        totalScammedQuantity -= flaggedQuantity[scammer][msg.sender];
    |        flaggedQuantity[scammer][msg.sender] = 0;
  > |        theScamSealToken.transferBack(scammer, numberOfTokensToForgive);
    |
    |        msg.sender.transfer(insurance);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(189)

[33mWarning[0m for DAO in contract 'ScamSeal':
    |        }
    |        owner.transfer(contractFeeAmount);
  > |        theScamSealToken.transferBack(scammer, numberOfTotalTokensToForgive);
    |
    |        if(forgivenessAmount > 0){
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(283)

[31mViolation[0m for DAOConstantGas in contract 'ScamSeal':
    |    uint256 ownersFee = div( mul(msg.value, contractFeePercentage), 100 );//mul(msg.value, div(contractFeePercentage, 100));
    |    uint256 insurance = msg.value - ownersFee;
  > |    owner.transfer(ownersFee);
    |    flaggerInsurance[msg.sender][scammer] += insurance;
    |    contractsInsuranceFee[msg.sender][scammer] += ownersFee;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(169)

[33mWarning[0m for DAOConstantGas in contract 'ScamSeal':
    |        theScamSealToken.transferBack(scammer, numberOfTokensToForgive);
    |
  > |        msg.sender.transfer(insurance);
    |        Forgived(scammer, msg.sender, insurance+hadFee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(191)

[33mWarning[0m for DAOConstantGas in contract 'ScamSeal':
    |                    totalRepaidQuantity += forgivenessAmount;
    |                    totalScammedRepaid[scammer] += forgivenessAmount;
  > |                    forgivedBy.transfer(forgivenessAmount);
    |                    PartiallyForgived(scammer, forgivedBy, forgivenessAmount);
    |                    forgivenessAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(262)

[33mWarning[0m for DAOConstantGas in contract 'ScamSeal':
    |            }
    |        }
  > |        owner.transfer(contractFeeAmount);
    |        theScamSealToken.transferBack(scammer, numberOfTotalTokensToForgive);
    |
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(282)

[33mWarning[0m for DAOConstantGas in contract 'ScamSeal':
    |
    |        if(forgivenessAmount > 0){
  > |            msg.sender.transfer(forgivenessAmount);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(286)

[33mWarning[0m for DAOConstantGas in contract 'ScamSeal':
    |    event DonationReceived(address by, uint256 amount);
    |    function donate() payable {
  > |        owner.transfer(msg.value);
    |        DonationReceived(msg.sender, msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(292)

[31mViolation[0m for MissingInputValidation in contract 'ScamSeal':
    |uint256 public reliefRatio = 10;
    |//how many times an address has been marked as SCAM
  > |mapping (address => uint256) public scamFlags;
    |//contract statistics.
    |uint public totalNumberOfScammers = 0;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'ScamSeal':
    |mapping (address => address[]) flaggedIndex;
    |//how much wei was the scammer been marked for.
  > |mapping (address => uint256) public totalScammed;
    |//how much wei did the scammer repaid
    |mapping (address => uint256) public totalScammedRepaid;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'ScamSeal':
    |mapping (address => uint256) public totalScammed;
    |//how much wei did the scammer repaid
  > |mapping (address => uint256) public totalScammedRepaid;
    |
    |function ScamSeal() {
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'ScamSeal':
    |//unless the scammer already started to pay its debt
    |
  > |function forgiveIt(address scammer) {
    |    if(flaggerInsurance[msg.sender][scammer] > 0){
    |        uint256 insurance = flaggerInsurance[msg.sender][scammer];
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(179)

[31mViolation[0m for MissingInputValidation in contract 'ScamSeal':
    |}
    |//forgiveMeOnBehalfOf - somebody else can pay a scammer address debt (same as above)
  > |function forgiveMeOnBehalfOf(address scammer) payable addressToBeAScammer(scammer) returns (bool success){
    |
    |        forgiveThis(scammer);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |}
    |
  > |function mul(uint a, uint b) internal returns (uint) {
    |uint c = a * b;
    |require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |}
    |
  > |function div(uint a, uint b) internal returns (uint) {
    |require(b > 0);
    |uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |
    |
  > |address public owner;
    |//the address of the ScamSealToken created by this contract
    |address public scamSealTokenAddress;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |address public owner;
    |//the address of the ScamSealToken created by this contract
  > |address public scamSealTokenAddress;
    |//the actual ScamSealToken
    |ScamSealToken theScamSealToken; 
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |//the fee is 2% of the amount sent.
    |//the fee is directly sent to the owner of this contract
  > |uint public contractFeePercentage = 2;
    |
    |//the price for 1 ScamStapToken is 1 finney
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |
    |//the price for 1 ScamStapToken is 1 finney
  > |uint256 public pricePerUnit = 1 finney;
    |//for a address to lose the ScamSealTokens it must pay a reliefRatio per token
    |//for each 1 token that it holds it must pay 10 finney to make the token dissapear from they account
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |//for a address to lose the ScamSealTokens it must pay a reliefRatio per token
    |//for each 1 token that it holds it must pay 10 finney to make the token dissapear from they account
  > |uint256 public reliefRatio = 10;
    |//how many times an address has been marked as SCAM
    |mapping (address => uint256) public scamFlags;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |mapping (address => uint256) public scamFlags;
    |//contract statistics.
  > |uint public totalNumberOfScammers = 0;
    |uint public totalScammedQuantity = 0;
    |uint public totalRepaidQuantity = 0;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |//contract statistics.
    |uint public totalNumberOfScammers = 0;
  > |uint public totalScammedQuantity = 0;
    |uint public totalRepaidQuantity = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |uint public totalNumberOfScammers = 0;
    |uint public totalScammedQuantity = 0;
  > |uint public totalRepaidQuantity = 0;
    |
    |mapping (address => mapping(address => uint256)) flaggedQuantity;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |    }
    |}
  > |function updateFlagCount(address from, address scammer, uint256 quantity) private{
    |    scamFlags[scammer] += 1;
    |    if(scamFlags[scammer] == 1){
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |
    |
  > |function addAddressToIndex(address scammer, address theAddressToIndex) private returns(bool success){
    |    bool addressFound = false;
    |    for(uint i = 0; i < flaggedIndex[scammer].length; i++){
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |//If the amount sent to this function is greater than the amount 
    |//that is needed to cover or debt is sent back to the scammer.
  > |function forgiveMe() payable toBeAScammer returns (bool success){
    |    address scammer = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |        return true;
    |    }
  > |    function forgiveThis(address scammer) private returns (bool success){
    |        uint256 forgivenessAmount = msg.value;
    |        uint256 contractFeeAmount =  div(mul(forgivenessAmount, contractFeePercentage), 100); 
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'ScamSeal':
    |    }
    |    event DonationReceived(address by, uint256 amount);
  > |    function donate() payable {
    |        owner.transfer(msg.value);
    |        DonationReceived(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(291)

[33mWarning[0m for TODReceiver in contract 'ScamSeal':
    |        theScamSealToken.transferBack(scammer, numberOfTokensToForgive);
    |
  > |        msg.sender.transfer(insurance);
    |        Forgived(scammer, msg.sender, insurance+hadFee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(191)

[33mWarning[0m for TODReceiver in contract 'ScamSeal':
    |
    |        if(forgivenessAmount > 0){
  > |            msg.sender.transfer(forgivenessAmount);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(286)

[33mWarning[0m for TODReceiver in contract 'ScamSeal':
    |    event DonationReceived(address by, uint256 amount);
    |    function donate() payable {
  > |        owner.transfer(msg.value);
    |        DonationReceived(msg.sender, msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(292)

[33mWarning[0m for UnhandledException in contract 'ScamSeal':
    |    uint256 ownersFee = div( mul(msg.value, contractFeePercentage), 100 );//mul(msg.value, div(contractFeePercentage, 100));
    |    uint256 insurance = msg.value - ownersFee;
  > |    owner.transfer(ownersFee);
    |    flaggerInsurance[msg.sender][scammer] += insurance;
    |    contractsInsuranceFee[msg.sender][scammer] += ownersFee;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(169)

[33mWarning[0m for UnhandledException in contract 'ScamSeal':
    |    flaggerInsurance[msg.sender][scammer] += insurance;
    |    contractsInsuranceFee[msg.sender][scammer] += ownersFee;
  > |    theScamSealToken.transfer(scammer, numberOfTokens);
    |    uint256 q = mul(reliefRatio, mul(msg.value, pricePerUnit));
    |    MarkedAsScam(scammer, msg.sender, q);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(172)

[33mWarning[0m for UnhandledException in contract 'ScamSeal':
    |        totalScammedQuantity -= flaggedQuantity[scammer][msg.sender];
    |        flaggedQuantity[scammer][msg.sender] = 0;
  > |        theScamSealToken.transferBack(scammer, numberOfTokensToForgive);
    |
    |        msg.sender.transfer(insurance);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(189)

[33mWarning[0m for UnhandledException in contract 'ScamSeal':
    |        theScamSealToken.transferBack(scammer, numberOfTokensToForgive);
    |
  > |        msg.sender.transfer(insurance);
    |        Forgived(scammer, msg.sender, insurance+hadFee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(191)

[33mWarning[0m for UnhandledException in contract 'ScamSeal':
    |                    totalRepaidQuantity += forgivenessAmount;
    |                    totalScammedRepaid[scammer] += forgivenessAmount;
  > |                    forgivedBy.transfer(forgivenessAmount);
    |                    PartiallyForgived(scammer, forgivedBy, forgivenessAmount);
    |                    forgivenessAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(262)

[33mWarning[0m for UnhandledException in contract 'ScamSeal':
    |                    totalScammedRepaid[scammer] += toForgive;
    |                    totalRepaidQuantity += toForgive;
  > |                    forgivedBy.transfer(toForgive);
    |                    Forgived(scammer, forgivedBy, toForgive);
    |                }
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(271)

[33mWarning[0m for UnhandledException in contract 'ScamSeal':
    |            }
    |        }
  > |        owner.transfer(contractFeeAmount);
    |        theScamSealToken.transferBack(scammer, numberOfTotalTokensToForgive);
    |
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(282)

[33mWarning[0m for UnhandledException in contract 'ScamSeal':
    |        }
    |        owner.transfer(contractFeeAmount);
  > |        theScamSealToken.transferBack(scammer, numberOfTotalTokensToForgive);
    |
    |        if(forgivenessAmount > 0){
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(283)

[33mWarning[0m for UnhandledException in contract 'ScamSeal':
    |
    |        if(forgivenessAmount > 0){
  > |            msg.sender.transfer(forgivenessAmount);
    |        }
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(286)

[33mWarning[0m for UnhandledException in contract 'ScamSeal':
    |    event DonationReceived(address by, uint256 amount);
    |    function donate() payable {
  > |        owner.transfer(msg.value);
    |        DonationReceived(msg.sender, msg.value);
    |
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(292)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |
    |
  > |contract ScamSealToken {
    |    //The Scam Seal Token is intended to mark an address as SCAM.
    |    //this token is used by the contract ScamSeal defined bellow
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |}
    |function updateFlagCount(address from, address scammer, uint256 quantity) private{
  > |    scamFlags[scammer] += 1;
    |    if(scamFlags[scammer] == 1){
    |        totalNumberOfScammers += 1;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |    scamFlags[scammer] += 1;
    |    if(scamFlags[scammer] == 1){
  > |        totalNumberOfScammers += 1;
    |    }
    |    uint256 q = mul(reliefRatio, mul(quantity, pricePerUnit));
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |    }
    |    uint256 q = mul(reliefRatio, mul(quantity, pricePerUnit));
  > |    flaggedQuantity[scammer][from] += q;
    |    flaggedRepaid[scammer][from] = 0;
    |    totalScammed[scammer] += q;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |    uint256 q = mul(reliefRatio, mul(quantity, pricePerUnit));
    |    flaggedQuantity[scammer][from] += q;
  > |    flaggedRepaid[scammer][from] = 0;
    |    totalScammed[scammer] += q;
    |    totalScammedQuantity += q;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |    flaggedQuantity[scammer][from] += q;
    |    flaggedRepaid[scammer][from] = 0;
  > |    totalScammed[scammer] += q;
    |    totalScammedQuantity += q;
    |    addAddressToIndex(scammer, from);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(203)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |    flaggedRepaid[scammer][from] = 0;
    |    totalScammed[scammer] += q;
  > |    totalScammedQuantity += q;
    |    addAddressToIndex(scammer, from);
    |}
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(204)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |    }
    |    if(!addressFound){
  > |        flaggedIndex[scammer].push(theAddressToIndex);
    |    }
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |            if(toForgive > 0){
    |                if(toForgive >= forgivenessAmount){
  > |                    flaggedRepaid[scammer][forgivedBy] += forgivenessAmount;
    |                    totalRepaidQuantity += forgivenessAmount;
    |                    totalScammedRepaid[scammer] += forgivenessAmount;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |                if(toForgive >= forgivenessAmount){
    |                    flaggedRepaid[scammer][forgivedBy] += forgivenessAmount;
  > |                    totalRepaidQuantity += forgivenessAmount;
    |                    totalScammedRepaid[scammer] += forgivenessAmount;
    |                    forgivedBy.transfer(forgivenessAmount);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |                    flaggedRepaid[scammer][forgivedBy] += forgivenessAmount;
    |                    totalRepaidQuantity += forgivenessAmount;
  > |                    totalScammedRepaid[scammer] += forgivenessAmount;
    |                    forgivedBy.transfer(forgivenessAmount);
    |                    PartiallyForgived(scammer, forgivedBy, forgivenessAmount);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |                }else{
    |                    forgivenessAmount -= toForgive;
  > |                    flaggedRepaid[scammer][forgivedBy] += toForgive;
    |                    totalScammedRepaid[scammer] += toForgive;
    |                    totalRepaidQuantity += toForgive;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |                    forgivenessAmount -= toForgive;
    |                    flaggedRepaid[scammer][forgivedBy] += toForgive;
  > |                    totalScammedRepaid[scammer] += toForgive;
    |                    totalRepaidQuantity += toForgive;
    |                    forgivedBy.transfer(toForgive);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(269)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |                    flaggedRepaid[scammer][forgivedBy] += toForgive;
    |                    totalScammedRepaid[scammer] += toForgive;
  > |                    totalRepaidQuantity += toForgive;
    |                    forgivedBy.transfer(toForgive);
    |                    Forgived(scammer, forgivedBy, toForgive);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |                    uint256 insurance = flaggerInsurance[forgivedBy][scammer];
    |                    contractFeeAmount += insurance;
  > |                    flaggerInsurance[forgivedBy][scammer] = 0;
    |                    contractsInsuranceFee[forgivedBy][scammer] = 0;
    |                }
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(277)

[31mViolation[0m for UnrestrictedWrite in contract 'ScamSeal':
    |                    contractFeeAmount += insurance;
    |                    flaggerInsurance[forgivedBy][scammer] = 0;
  > |                    contractsInsuranceFee[forgivedBy][scammer] = 0;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(278)

[33mWarning[0m for LockedEther in contract 'ScamSealToken':
    |
    |
  > |contract ScamSealToken {
    |    //The Scam Seal Token is intended to mark an address as SCAM.
    |    //this token is used by the contract ScamSeal defined bellow
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamSealToken':
    |        if(_amount >= 0){
    |            if(balances[msg.sender] >= _amount){
  > |                balances[msg.sender] -= _amount;
    |                balances[_to] += _amount;
    |                Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamSealToken':
    |            if(balances[msg.sender] >= _amount){
    |                balances[msg.sender] -= _amount;
  > |                balances[_to] += _amount;
    |                Transfer(msg.sender, _to, _amount);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamSealToken':
    |                return true;
    |                }else{
  > |                    totalSupply += _amount + _amount;   
    |                    balances[msg.sender] += _amount + _amount;
    |                    balances[msg.sender] -= _amount;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamSealToken':
    |                }else{
    |                    totalSupply += _amount + _amount;   
  > |                    balances[msg.sender] += _amount + _amount;
    |                    balances[msg.sender] -= _amount;
    |                    balances[_to] += _amount;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamSealToken':
    |                    totalSupply += _amount + _amount;   
    |                    balances[msg.sender] += _amount + _amount;
  > |                    balances[msg.sender] -= _amount;
    |                    balances[_to] += _amount;
    |                    Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamSealToken':
    |                    balances[msg.sender] += _amount + _amount;
    |                    balances[msg.sender] -= _amount;
  > |                    balances[_to] += _amount;
    |                    Transfer(msg.sender, _to, _amount);
    |                    return true;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamSealToken':
    |        if(_amount >= 0){
    |            if(balances[_from] >= _amount){
  > |                balances[_from] -= _amount;
    |                balances[owner] += _amount;
    |                Transfer(_from, owner, _amount);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamSealToken':
    |            if(balances[_from] >= _amount){
    |                balances[_from] -= _amount;
  > |                balances[owner] += _amount;
    |                Transfer(_from, owner, _amount);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamSealToken':
    |            }else{
    |                _amount = balances[_from];
  > |                balances[_from] -= _amount;
    |                balances[owner] += _amount;
    |                Transfer(_from, owner, _amount);
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'ScamSealToken':
    |                _amount = balances[_from];
    |                balances[_from] -= _amount;
  > |                balances[owner] += _amount;
    |                Transfer(_from, owner, _amount);
    |                return true;
  at /home/jiaming/mavs_srcs/contract@0x085bf17d6c557254d0370514b97d16307b8f0775.sol(60)


