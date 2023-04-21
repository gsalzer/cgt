Processing contract: /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol:PotPotato
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'PotPotato':
    |        if(timePassed()>=TIME_TO_COOK){
    |            //contest over, refund anything paid
  > |            msg.sender.transfer(msg.value);
    |            lastPot=this.balance;
    |            lastHotPotatoHolder=hotPotatoHolder;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(96)

[31mViolation[0m for DAOConstantGas in contract 'PotPotato':
    |            lastPot=this.balance;
    |            lastHotPotatoHolder=hotPotatoHolder;
  > |            hotPotatoHolder.transfer(this.balance);
    |            hotPotatoHolder=0;
    |            lastBidTime=0;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(99)

[33mWarning[0m for DAOConstantGas in contract 'PotPotato':
    |            //if the owner is the contract, this is the first purchase, and payment should go to the pot
    |            if(potato.owner!=address(this)){
  > |                potato.owner.transfer(payment);
    |            }
    |            ceoAddress.transfer(devFee);
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(58)

[33mWarning[0m for DAOConstantGas in contract 'PotPotato':
    |                potato.owner.transfer(payment);
    |            }
  > |            ceoAddress.transfer(devFee);
    |            potato.price= SafeMath.div(SafeMath.mul(sellingPrice, 150), 76);
    |            potato.owner=msg.sender;//transfer ownership
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(60)

[33mWarning[0m for DAOConstantGas in contract 'PotPotato':
    |            lastBidTime=block.timestamp;
    |            TIME_TO_COOK=SafeMath.add(BASE_TIME_TO_COOK,SafeMath.mul(index,TIME_MULTIPLIER)); //pots have times to cook varying from 30-85 minutes
  > |            msg.sender.transfer(purchaseExcess);//returns excess eth
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(66)

[33mWarning[0m for LockedEther in contract 'PotPotato':
    |
    |
  > |contract PotPotato{
    |    address public ceoAddress;
    |    address public hotPotatoHolder;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |
    |
  > |contract PotPotato{
    |    address public ceoAddress;
    |    address public hotPotatoHolder;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |
    |contract PotPotato{
  > |    address public ceoAddress;
    |    address public hotPotatoHolder;
    |    address public lastHotPotatoHolder;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |contract PotPotato{
    |    address public ceoAddress;
  > |    address public hotPotatoHolder;
    |    address public lastHotPotatoHolder;
    |    uint256 public lastBidTime;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    address public ceoAddress;
    |    address public hotPotatoHolder;
  > |    address public lastHotPotatoHolder;
    |    uint256 public lastBidTime;
    |    uint256 public contestStartTime;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    address public hotPotatoHolder;
    |    address public lastHotPotatoHolder;
  > |    uint256 public lastBidTime;
    |    uint256 public contestStartTime;
    |    uint256 public lastPot;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    address public lastHotPotatoHolder;
    |    uint256 public lastBidTime;
  > |    uint256 public contestStartTime;
    |    uint256 public lastPot;
    |
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    uint256 public lastBidTime;
    |    uint256 public contestStartTime;
  > |    uint256 public lastPot;
    |
    |    Potato[] public potatoes;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    uint256 public lastPot;
    |
  > |    Potato[] public potatoes;
    |    
    |    uint256 public BASE_TIME_TO_COOK=30 minutes;//60 seconds;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    Potato[] public potatoes;
    |    
  > |    uint256 public BASE_TIME_TO_COOK=30 minutes;//60 seconds;
    |    uint256 public TIME_MULTIPLIER=5 minutes;//5 seconds;//time per index of potato
    |    uint256 public TIME_TO_COOK=BASE_TIME_TO_COOK; //this changes
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    
    |    uint256 public BASE_TIME_TO_COOK=30 minutes;//60 seconds;
  > |    uint256 public TIME_MULTIPLIER=5 minutes;//5 seconds;//time per index of potato
    |    uint256 public TIME_TO_COOK=BASE_TIME_TO_COOK; //this changes
    |    uint256 public NUM_POTATOES=12;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    uint256 public BASE_TIME_TO_COOK=30 minutes;//60 seconds;
    |    uint256 public TIME_MULTIPLIER=5 minutes;//5 seconds;//time per index of potato
  > |    uint256 public TIME_TO_COOK=BASE_TIME_TO_COOK; //this changes
    |    uint256 public NUM_POTATOES=12;
    |    uint256 public START_PRICE=0.001 ether;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    uint256 public TIME_MULTIPLIER=5 minutes;//5 seconds;//time per index of potato
    |    uint256 public TIME_TO_COOK=BASE_TIME_TO_COOK; //this changes
  > |    uint256 public NUM_POTATOES=12;
    |    uint256 public START_PRICE=0.001 ether;
    |    uint256 public CONTEST_INTERVAL=1 weeks;//4 minutes;//1 week
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    uint256 public TIME_TO_COOK=BASE_TIME_TO_COOK; //this changes
    |    uint256 public NUM_POTATOES=12;
  > |    uint256 public START_PRICE=0.001 ether;
    |    uint256 public CONTEST_INTERVAL=1 weeks;//4 minutes;//1 week
    |    
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    uint256 public NUM_POTATOES=12;
    |    uint256 public START_PRICE=0.001 ether;
  > |    uint256 public CONTEST_INTERVAL=1 weeks;//4 minutes;//1 week
    |    
    |    /*** DATATYPES ***/
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    }
    |    
  > |    function getBalance() public view returns(uint256 value){
    |        return this.balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |        return this.balance;
    |    }
  > |    function timePassed() public view returns(uint256 time){
    |        if(lastBidTime==0){
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |        return SafeMath.sub(block.timestamp,lastBidTime);
    |    }
  > |    function timeLeftToContestStart() public view returns(uint256 time){
    |        if(block.timestamp>contestStartTime){
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |        return SafeMath.sub(contestStartTime,block.timestamp);
    |    }
  > |    function timeLeftToCook() public view returns(uint256 time){
    |        return SafeMath.sub(TIME_TO_COOK,timePassed());
    |    }
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |        return SafeMath.sub(TIME_TO_COOK,timePassed());
    |    }
  > |    function contestOver() public view returns(bool){
    |        return timePassed()>=TIME_TO_COOK;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |    
    |    /*** PRIVATE FUNCTIONS ***/
  > |    function _endContestIfNeeded() private returns(bool){
    |        if(timePassed()>=TIME_TO_COOK){
    |            //contest over, refund anything paid
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |        return false;
    |    }
  > |    function _resetPotatoes() private{
    |        for(uint i = 0; i<NUM_POTATOES; i++){
    |            Potato memory newpotato=Potato({owner:address(this),price: START_PRICE});
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |        }
    |    }
  > |    function _setNewStartTime() private{
    |        uint256 start=contestStartTime;
    |        while(start<block.timestamp){
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |  * @dev Multiplies two numbers, throws on overflow.
    |  */
  > |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
    |      return 0;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |  * @dev Integer division of two numbers, truncating the quotient.
    |  */
  > |  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |    // assert(b > 0); // Solidity automatically throws when dividing by 0
    |    uint256 c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
    |  */
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'PotPotato':
    |  * @dev Adds two numbers, throws on overflow.
    |  */
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(157)

[31mViolation[0m for TODAmount in contract 'PotPotato':
    |            lastPot=this.balance;
    |            lastHotPotatoHolder=hotPotatoHolder;
  > |            hotPotatoHolder.transfer(this.balance);
    |            hotPotatoHolder=0;
    |            lastBidTime=0;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(99)

[33mWarning[0m for TODReceiver in contract 'PotPotato':
    |            lastBidTime=block.timestamp;
    |            TIME_TO_COOK=SafeMath.add(BASE_TIME_TO_COOK,SafeMath.mul(index,TIME_MULTIPLIER)); //pots have times to cook varying from 30-85 minutes
  > |            msg.sender.transfer(purchaseExcess);//returns excess eth
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(66)

[33mWarning[0m for TODReceiver in contract 'PotPotato':
    |        if(timePassed()>=TIME_TO_COOK){
    |            //contest over, refund anything paid
  > |            msg.sender.transfer(msg.value);
    |            lastPot=this.balance;
    |            lastHotPotatoHolder=hotPotatoHolder;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(96)

[33mWarning[0m for UnhandledException in contract 'PotPotato':
    |            //if the owner is the contract, this is the first purchase, and payment should go to the pot
    |            if(potato.owner!=address(this)){
  > |                potato.owner.transfer(payment);
    |            }
    |            ceoAddress.transfer(devFee);
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(58)

[33mWarning[0m for UnhandledException in contract 'PotPotato':
    |                potato.owner.transfer(payment);
    |            }
  > |            ceoAddress.transfer(devFee);
    |            potato.price= SafeMath.div(SafeMath.mul(sellingPrice, 150), 76);
    |            potato.owner=msg.sender;//transfer ownership
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(60)

[33mWarning[0m for UnhandledException in contract 'PotPotato':
    |            lastBidTime=block.timestamp;
    |            TIME_TO_COOK=SafeMath.add(BASE_TIME_TO_COOK,SafeMath.mul(index,TIME_MULTIPLIER)); //pots have times to cook varying from 30-85 minutes
  > |            msg.sender.transfer(purchaseExcess);//returns excess eth
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(66)

[33mWarning[0m for UnhandledException in contract 'PotPotato':
    |        if(timePassed()>=TIME_TO_COOK){
    |            //contest over, refund anything paid
  > |            msg.sender.transfer(msg.value);
    |            lastPot=this.balance;
    |            lastHotPotatoHolder=hotPotatoHolder;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(96)

[33mWarning[0m for UnhandledException in contract 'PotPotato':
    |            lastPot=this.balance;
    |            lastHotPotatoHolder=hotPotatoHolder;
  > |            hotPotatoHolder.transfer(this.balance);
    |            hotPotatoHolder=0;
    |            lastBidTime=0;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |            }
    |            ceoAddress.transfer(devFee);
  > |            potato.price= SafeMath.div(SafeMath.mul(sellingPrice, 150), 76);
    |            potato.owner=msg.sender;//transfer ownership
    |            hotPotatoHolder=msg.sender;//becomes holder with potential to win the pot
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |            ceoAddress.transfer(devFee);
    |            potato.price= SafeMath.div(SafeMath.mul(sellingPrice, 150), 76);
  > |            potato.owner=msg.sender;//transfer ownership
    |            hotPotatoHolder=msg.sender;//becomes holder with potential to win the pot
    |            lastBidTime=block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |            potato.price= SafeMath.div(SafeMath.mul(sellingPrice, 150), 76);
    |            potato.owner=msg.sender;//transfer ownership
  > |            hotPotatoHolder=msg.sender;//becomes holder with potential to win the pot
    |            lastBidTime=block.timestamp;
    |            TIME_TO_COOK=SafeMath.add(BASE_TIME_TO_COOK,SafeMath.mul(index,TIME_MULTIPLIER)); //pots have times to cook varying from 30-85 minutes
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |            potato.owner=msg.sender;//transfer ownership
    |            hotPotatoHolder=msg.sender;//becomes holder with potential to win the pot
  > |            lastBidTime=block.timestamp;
    |            TIME_TO_COOK=SafeMath.add(BASE_TIME_TO_COOK,SafeMath.mul(index,TIME_MULTIPLIER)); //pots have times to cook varying from 30-85 minutes
    |            msg.sender.transfer(purchaseExcess);//returns excess eth
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |            hotPotatoHolder=msg.sender;//becomes holder with potential to win the pot
    |            lastBidTime=block.timestamp;
  > |            TIME_TO_COOK=SafeMath.add(BASE_TIME_TO_COOK,SafeMath.mul(index,TIME_MULTIPLIER)); //pots have times to cook varying from 30-85 minutes
    |            msg.sender.transfer(purchaseExcess);//returns excess eth
    |        }
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |            //contest over, refund anything paid
    |            msg.sender.transfer(msg.value);
  > |            lastPot=this.balance;
    |            lastHotPotatoHolder=hotPotatoHolder;
    |            hotPotatoHolder.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |            msg.sender.transfer(msg.value);
    |            lastPot=this.balance;
  > |            lastHotPotatoHolder=hotPotatoHolder;
    |            hotPotatoHolder.transfer(this.balance);
    |            hotPotatoHolder=0;
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |            lastHotPotatoHolder=hotPotatoHolder;
    |            hotPotatoHolder.transfer(this.balance);
  > |            hotPotatoHolder=0;
    |            lastBidTime=0;
    |            _resetPotatoes();
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |            hotPotatoHolder.transfer(this.balance);
    |            hotPotatoHolder=0;
  > |            lastBidTime=0;
    |            _resetPotatoes();
    |            _setNewStartTime();
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |        for(uint i = 0; i<NUM_POTATOES; i++){
    |            Potato memory newpotato=Potato({owner:address(this),price: START_PRICE});
  > |            potatoes[i]=newpotato;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'PotPotato':
    |            start=SafeMath.add(start,CONTEST_INTERVAL);
    |        }
  > |        contestStartTime=start;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(119)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x96978ba07d6476a47a3f69c8ddebae8dcb16edbd.sol(122)


