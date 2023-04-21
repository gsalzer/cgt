Processing contract: /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol:IronHands
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol:REV
[31mViolation[0m for DAOConstantGas in contract 'IronHands':
    |                participants[payoutOrder].payout -= payoutToSend;
    |                //Try and pay them, making best effort. But if we fail? Run out of gas? That's not our problem any more.
  > |                if(participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)()){
    |                    //Record that they were paid
    |                    emit Payout(payoutToSend, participants[payoutOrder].etherAddress);
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(231)

[33mWarning[0m for DAOConstantGas in contract 'IronHands':
    |        balance -= investment;
    |        //Invest it in more tokens.
  > |        uint256 tokens = weak_hands.buy.value(investment).gas(1000000)(msg.sender);
    |        //Record that tokens were purchased
    |        emit Purchase(investment, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(213)

[33mWarning[0m for DAOConstantGas in contract 'IronHands':
    |                participants[payoutOrder].payout -= payoutToSend;
    |                //Try and pay them, making best effort. But if we fail? Run out of gas? That's not our problem any more.
  > |                if(participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)()){
    |                    //Record that they were paid
    |                    emit Payout(payoutToSend, participants[payoutOrder].etherAddress);
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(231)

[33mWarning[0m for LockedEther in contract 'IronHands':
    |}
    |
  > |contract IronHands is Owned {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'IronHands':
    |    }
    |    
  > |    function changeOwner(address _newOwner) public onlyOwner {
    |        ownerCandidate = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'IronHands':
    |    Participant[] public participants;
    |    //How much each person is owed
  > |    mapping(address => uint256) public creditRemaining;
    |    //What we will be buying
    |    REV weak_hands;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'IronHands':
    |     * Amount still owed to an individual address
    |     */
  > |    function amountOwed(address anAddress) public view returns (uint256) {
    |        return creditRemaining[anAddress];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(319)

[31mViolation[0m for MissingInputValidation in contract 'IronHands':
    |     * A trap door for when someone sends tokens other than the intended ones so the overseers can decide where to send them.
    |     */
  > |    function transferAnyERC20Token(address tokenAddress, address tokenOwner, uint tokens) public onlyOwner notPooh(tokenAddress) returns (bool success) {
    |        return ERC20Interface(tokenAddress).transfer(tokenOwner, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(333)

[31mViolation[0m for MissingInputValidation in contract 'IronHands':
    |    }
    |    
  > |    function changeLimit(uint256 newLimit) public onlyOwner returns (uint256) {
    |        limit = newLimit * 1 finney;
    |        return limit;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(337)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |
    |contract Owned {
  > |    address public owner;
    |    address public ownerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |contract Owned {
    |    address public owner;
  > |    address public ownerCandidate;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |    }
    |    
  > |    function acceptOwnership() public {
    |        require(msg.sender == ownerCandidate);  
    |        owner = ownerCandidate;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |    uint256 dividends;
    |    //The percent to return to depositers. 100 for 00%, 200 to double, etc.
  > |    uint256 public multiplier;
    |    //Where in the line we are with creditors
    |    uint256 public payoutOrder = 0;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |    uint256 public multiplier;
    |    //Where in the line we are with creditors
  > |    uint256 public payoutOrder = 0;
    |    //How much is owed to people
    |    uint256 public backlog = 0;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |    uint256 public payoutOrder = 0;
    |    //How much is owed to people
  > |    uint256 public backlog = 0;
    |    //The creditor line
    |    Participant[] public participants;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |    uint256 public backlog = 0;
    |    //The creditor line
  > |    Participant[] public participants;
    |    //How much each person is owed
    |    mapping(address => uint256) public creditRemaining;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |    REV weak_hands;
    |    // Limitation
  > |    uint256 public limit = 50 finney; // 1000 = 1eth, 100 = 0,1 eth | 50 finney = 0.05 eth
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |     * then pay out who we owe and buy more tokens.
    |     */ 
  > |    function deposit() payable public limitBuy() {
    |        //You have to send more than 1000000 wei.
    |        require(msg.value > 1000000);
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |     * Take the other 75%, and use it to pay off depositors.
    |     */
  > |    function payout() public {
    |        //Take everything in the pool
    |        uint balance = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |     * Number of tokens the contract owns.
    |     */
  > |    function myTokens() public view returns(uint256){
    |        return weak_hands.myTokens();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |     * Number of dividends owed to the contract.
    |     */
  > |    function myDividends() public view returns(uint256){
    |        return weak_hands.myDividends(true);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |     * Number of dividends received by the contract.
    |     */
  > |    function totalDividends() public view returns(uint256){
    |        return dividends;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(272)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |     * Request dividends be paid out and added to the pool.
    |     */
  > |    function withdraw() public {
    |        uint256 balance = address(this).balance;
    |        weak_hands.withdraw.gas(1000000)();
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |     * Number of participants who are still owed.
    |     */
  > |    function backlogLength() public view returns (uint256){
    |        return participants.length - payoutOrder;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(291)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |     * Total amount still owed in credit to depositors.
    |     */
  > |    function backlogAmount() public view returns (uint256){
    |        return backlog;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(298)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |     * Total number of deposits in the lifetime of the contract.
    |     */
  > |    function totalParticipants() public view returns (uint256){
    |        return participants.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(305)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |     * Total amount of ETH that the contract has delt with so far.
    |     */
  > |    function totalSpent() public view returns (uint256){
    |        return throughput;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'IronHands':
    |      * Amount owed to this person.
    |      */
  > |    function amountIAmOwed() public view returns (uint256){
    |        return amountOwed(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(326)

[31mViolation[0m for TODAmount in contract 'IronHands':
    |        balance -= investment;
    |        //Invest it in more tokens.
  > |        uint256 tokens = weak_hands.buy.value(investment).gas(1000000)(msg.sender);
    |        //Record that tokens were purchased
    |        emit Purchase(investment, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(213)

[33mWarning[0m for TODReceiver in contract 'IronHands':
    |        balance -= investment;
    |        //Invest it in more tokens.
  > |        uint256 tokens = weak_hands.buy.value(investment).gas(1000000)(msg.sender);
    |        //Record that tokens were purchased
    |        emit Purchase(investment, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(213)

[33mWarning[0m for UnhandledException in contract 'IronHands':
    |        balance -= investment;
    |        //Invest it in more tokens.
  > |        uint256 tokens = weak_hands.buy.value(investment).gas(1000000)(msg.sender);
    |        //Record that tokens were purchased
    |        emit Purchase(investment, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(213)

[33mWarning[0m for UnhandledException in contract 'IronHands':
    |                participants[payoutOrder].payout -= payoutToSend;
    |                //Try and pay them, making best effort. But if we fail? Run out of gas? That's not our problem any more.
  > |                if(participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)()){
    |                    //Record that they were paid
    |                    emit Payout(payoutToSend, participants[payoutOrder].etherAddress);
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(231)

[33mWarning[0m for UnhandledException in contract 'IronHands':
    |     */
    |    function myTokens() public view returns(uint256){
  > |        return weak_hands.myTokens();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(259)

[33mWarning[0m for UnhandledException in contract 'IronHands':
    |     */
    |    function myDividends() public view returns(uint256){
  > |        return weak_hands.myDividends(true);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(266)

[33mWarning[0m for UnhandledException in contract 'IronHands':
    |    function withdraw() public {
    |        uint256 balance = address(this).balance;
  > |        weak_hands.withdraw.gas(1000000)();
    |        uint256 dividendsPaid = address(this).balance - balance;
    |        dividends += dividendsPaid;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(282)

[33mWarning[0m for UnhandledException in contract 'IronHands':
    |     */
    |    function transferAnyERC20Token(address tokenAddress, address tokenOwner, uint tokens) public onlyOwner notPooh(tokenAddress) returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(tokenOwner, tokens);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IronHands':
    |     */
    |    function myTokens() public view returns(uint256){
  > |        return weak_hands.myTokens();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IronHands':
    |     */
    |    function myDividends() public view returns(uint256){
  > |        return weak_hands.myDividends(true);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IronHands':
    |    function withdraw() public {
    |        uint256 balance = address(this).balance;
  > |        weak_hands.withdraw.gas(1000000)();
    |        uint256 dividendsPaid = address(this).balance - balance;
    |        dividends += dividendsPaid;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IronHands':
    |     */
    |    function transferAnyERC20Token(address tokenAddress, address tokenOwner, uint tokens) public onlyOwner notPooh(tokenAddress) returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(tokenOwner, tokens);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(334)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    | * 
    | * 
  > | *                
    | *
    | * ATTENTION!
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(6)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |        uint256 amountCredited = (msg.value * multiplier) / 100;
    |        //Get in line to be paid back.
  > |        participants.push(Participant(msg.sender, amountCredited));
    |        //Increase the backlog by the amount owed
    |        backlog += amountCredited;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |        participants.push(Participant(msg.sender, amountCredited));
    |        //Increase the backlog by the amount owed
  > |        backlog += amountCredited;
    |        //Increase the amount owed to this address
    |        creditRemaining[msg.sender] += amountCredited;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(183)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |        require(balance > 1);
    |        //Increase our total throughput
  > |        throughput += balance;
    |        //calculate 25% of investment
    |        uint256 investment = balance / 4;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(207)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |                balance -= payoutToSend;
    |                //subtract the amount paid from the amount owed
  > |                backlog -= payoutToSend;
    |                //subtract the amount remaining they are owed
    |                creditRemaining[participants[payoutOrder].etherAddress] -= payoutToSend;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |                backlog -= payoutToSend;
    |                //subtract the amount remaining they are owed
  > |                creditRemaining[participants[payoutOrder].etherAddress] -= payoutToSend;
    |                //credit their account the amount they are being paid
    |                participants[payoutOrder].payout -= payoutToSend;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |                creditRemaining[participants[payoutOrder].etherAddress] -= payoutToSend;
    |                //credit their account the amount they are being paid
  > |                participants[payoutOrder].payout -= payoutToSend;
    |                //Try and pay them, making best effort. But if we fail? Run out of gas? That's not our problem any more.
    |                if(participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)()){
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |                    //undo the accounting, they are being skipped because they are not payable.
    |                    balance += payoutToSend;
  > |                    backlog += payoutToSend;
    |                    creditRemaining[participants[payoutOrder].etherAddress] += payoutToSend;
    |                    participants[payoutOrder].payout += payoutToSend;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |                    balance += payoutToSend;
    |                    backlog += payoutToSend;
  > |                    creditRemaining[participants[payoutOrder].etherAddress] += payoutToSend;
    |                    participants[payoutOrder].payout += payoutToSend;
    |                }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(238)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |                    backlog += payoutToSend;
    |                    creditRemaining[participants[payoutOrder].etherAddress] += payoutToSend;
  > |                    participants[payoutOrder].payout += payoutToSend;
    |                }
    |
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |            if(balance > 0){
    |                // go to the next person in line
  > |                payoutOrder += 1;
    |            }
    |            //If we've run out of people to pay, stop
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'IronHands':
    |        weak_hands.withdraw.gas(1000000)();
    |        uint256 dividendsPaid = address(this).balance - balance;
  > |        dividends += dividendsPaid;
    |        emit Dividends(dividendsPaid);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'IronHands':
    |        backlog += amountCredited;
    |        //Increase the amount owed to this address
  > |        creditRemaining[msg.sender] += amountCredited;
    |        //Emit a deposit event.
    |        emit Deposit(msg.value, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'IronHands':
    |    
    |    function changeOwner(address _newOwner) public onlyOwner {
  > |        ownerCandidate = _newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'IronHands':
    |    function acceptOwnership() public {
    |        require(msg.sender == ownerCandidate);  
  > |        owner = ownerCandidate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'IronHands':
    |    
    |    function changeLimit(uint256 newLimit) public onlyOwner returns (uint256) {
  > |        limit = newLimit * 1 finney;
    |        return limit;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(338)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public ownerCandidate;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function changeOwner(address _newOwner) public onlyOwner {
    |        ownerCandidate = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public ownerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public ownerCandidate;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function acceptOwnership() public {
    |        require(msg.sender == ownerCandidate);  
    |        owner = ownerCandidate;
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    
    |    function changeOwner(address _newOwner) public onlyOwner {
  > |        ownerCandidate = _newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() public {
    |        require(msg.sender == ownerCandidate);  
  > |        owner = ownerCandidate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa5629861c9c345f50221996ef852fd9665eb1c05.sol(82)


