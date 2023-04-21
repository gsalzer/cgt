Processing contract: /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol:NRMc
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'NRMc':
    |
    |    if (out1 == msg.sender && !out1Done) {
  > |        if (out1.send(onefive)) {
    |           out1Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(232)

[31mViolation[0m for DAOConstantGas in contract 'NRMc':
    |        
    |    if (out2 == msg.sender && !out2Done) {
  > |        if (out2.send(onefive)) {
    |           out2Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(238)

[31mViolation[0m for DAOConstantGas in contract 'NRMc':
    |        
    |    if (out3 == msg.sender && !out3Done) {
  > |        if (out3.send(onefive)) {
    |           out3Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(244)

[31mViolation[0m for DAOConstantGas in contract 'NRMc':
    |    
    |    if (out4 == msg.sender && !out4Done) {
  > |        if (out4.send(onefive)) {
    |           out4Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(250)

[31mViolation[0m for DAOConstantGas in contract 'NRMc':
    |    
    |    if (out5 == msg.sender && !out5Done) {
  > |        if (out5.send(onefive)) {
    |           out5Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(256)

[33mWarning[0m for LockedEther in contract 'NRMc':
    |pragma solidity ^0.4.11;
    | 
  > |contract NRMc {
    |    string public symbol = "NRMc";
    |    string public name = "NRMc Closed ICO";
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'NRMc':
    |    }
    |    
  > |    function StartICO(uint256 durationInMinutes) {
    |        if (msg.sender == owner 
    |        && startDone == false)
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'NRMc':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'NRMc':
    |    }
    | 
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(172)

[31mViolation[0m for MissingInputValidation in contract 'NRMc':
    |    }
    | 
  > |    function approve(address _spender, uint256 _amount) returns (bool success) {
    |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(212)

[31mViolation[0m for MissingInputValidation in contract 'NRMc':
    |    }
    | 
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    | 
    |contract NRMc {
  > |    string public symbol = "NRMc";
    |    string public name = "NRMc Closed ICO";
    |    uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |contract NRMc {
    |    string public symbol = "NRMc";
  > |    string public name = "NRMc Closed ICO";
    |    uint8 public constant decimals = 18;
    |    uint256 _totalSupply = 20000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    string public symbol = "NRMc";
    |    string public name = "NRMc Closed ICO";
  > |    uint8 public constant decimals = 18;
    |    uint256 _totalSupply = 20000000000000000000000000;
    |    uint256 perReserve   =  2000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    address out4 = 0xa873134afa83410787Ae29dBfB39e5C38ca05fF2;
    |    address out5 = 0x5E663D73de8205b3f339fAA5a4218AcA95963260;
  > |    bool public out1Done = false;
    |    bool public out2Done = false;
    |    bool public out3Done = false;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    address out5 = 0x5E663D73de8205b3f339fAA5a4218AcA95963260;
    |    bool public out1Done = false;
  > |    bool public out2Done = false;
    |    bool public out3Done = false;
    |    bool public out4Done = false;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    bool public out1Done = false;
    |    bool public out2Done = false;
  > |    bool public out3Done = false;
    |    bool public out4Done = false;
    |    bool public out5Done = false;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    bool public out2Done = false;
    |    bool public out3Done = false;
  > |    bool public out4Done = false;
    |    bool public out5Done = false;
    |    uint public amountRaised;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    bool public out3Done = false;
    |    bool public out4Done = false;
  > |    bool public out5Done = false;
    |    uint public amountRaised;
    |    uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    bool public out4Done = false;
    |    bool public out5Done = false;
  > |    uint public amountRaised;
    |    uint public deadline;
    |    uint public overRaisedUnsend = 0;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    bool public out5Done = false;
    |    uint public amountRaised;
  > |    uint public deadline;
    |    uint public overRaisedUnsend = 0;
    |    uint public backers = 0;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    uint public amountRaised;
    |    uint public deadline;
  > |    uint public overRaisedUnsend = 0;
    |    uint public backers = 0;
    |    uint public rate = 45000;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    uint public deadline;
    |    uint public overRaisedUnsend = 0;
  > |    uint public backers = 0;
    |    uint public rate = 45000;
    |    uint public onefive = 0;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    uint public overRaisedUnsend = 0;
    |    uint public backers = 0;
  > |    uint public rate = 45000;
    |    uint public onefive = 0;
    |    uint _durationInMinutes = 0;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    uint public backers = 0;
    |    uint public rate = 45000;
  > |    uint public onefive = 0;
    |    uint _durationInMinutes = 0;
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    }
    |    
  > |    function SendPreReserved1() {
    |            if (msg.sender == owner 
    |            && prereserved1Done == false
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    }       
    |    
  > |    function SendPreReserved2() {
    |            if (msg.sender == owner 
    |            && prereserved2Done == false
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    }       
    |
  > |    function SendPreReserved3() {
    |            if (msg.sender == owner 
    |            && prereserved3Done == false
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    }       
    |    
  > |    function SendPreReserved4() {
    |            if (msg.sender == owner 
    |            && prereserved4Done == false
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    }       
    |    
  > |    function SendPreReserved5() {
    |            if (msg.sender == owner 
    |            && prereserved5Done == false
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    }       
    | 
  > |    function totalSupply() constant returns (uint256 totalSupply) {        
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'NRMc':
    |    modifier afterDeadline() { if (now > deadline || balances[owner] == 0) _; }
    |
  > |    function safeWithdrawal() afterDeadline {
    |        
    |    if (onefiveDone == false) {
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(224)

[31mViolation[0m for TODAmount in contract 'NRMc':
    |
    |    if (out1 == msg.sender && !out1Done) {
  > |        if (out1.send(onefive)) {
    |           out1Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(232)

[31mViolation[0m for TODAmount in contract 'NRMc':
    |        
    |    if (out2 == msg.sender && !out2Done) {
  > |        if (out2.send(onefive)) {
    |           out2Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(238)

[31mViolation[0m for TODAmount in contract 'NRMc':
    |        
    |    if (out3 == msg.sender && !out3Done) {
  > |        if (out3.send(onefive)) {
    |           out3Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(244)

[31mViolation[0m for TODAmount in contract 'NRMc':
    |    
    |    if (out4 == msg.sender && !out4Done) {
  > |        if (out4.send(onefive)) {
    |           out4Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(250)

[31mViolation[0m for TODAmount in contract 'NRMc':
    |    
    |    if (out5 == msg.sender && !out5Done) {
  > |        if (out5.send(onefive)) {
    |           out5Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(256)

[31mViolation[0m for TODReceiver in contract 'NRMc':
    |    
    |    if (out5 == msg.sender && !out5Done) {
  > |        if (out5.send(onefive)) {
    |           out5Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(256)

[33mWarning[0m for UnhandledException in contract 'NRMc':
    |
    |    if (out1 == msg.sender && !out1Done) {
  > |        if (out1.send(onefive)) {
    |           out1Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(232)

[33mWarning[0m for UnhandledException in contract 'NRMc':
    |        
    |    if (out2 == msg.sender && !out2Done) {
  > |        if (out2.send(onefive)) {
    |           out2Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(238)

[33mWarning[0m for UnhandledException in contract 'NRMc':
    |        
    |    if (out3 == msg.sender && !out3Done) {
  > |        if (out3.send(onefive)) {
    |           out3Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(244)

[33mWarning[0m for UnhandledException in contract 'NRMc':
    |    
    |    if (out4 == msg.sender && !out4Done) {
  > |        if (out4.send(onefive)) {
    |           out4Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(250)

[33mWarning[0m for UnhandledException in contract 'NRMc':
    |    
    |    if (out5 == msg.sender && !out5Done) {
  > |        if (out5.send(onefive)) {
    |           out5Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NRMc':
    |
    |    if (out1 == msg.sender && !out1Done) {
  > |        if (out1.send(onefive)) {
    |           out1Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(232)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NRMc':
    |        
    |    if (out2 == msg.sender && !out2Done) {
  > |        if (out2.send(onefive)) {
    |           out2Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NRMc':
    |        
    |    if (out3 == msg.sender && !out3Done) {
  > |        if (out3.send(onefive)) {
    |           out3Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(244)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NRMc':
    |    
    |    if (out4 == msg.sender && !out4Done) {
  > |        if (out4.send(onefive)) {
    |           out4Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NRMc':
    |    
    |    if (out5 == msg.sender && !out5Done) {
  > |        if (out5.send(onefive)) {
    |           out5Done = true;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'NRMc':
    |        
    |    if (onefiveDone == false) {
  > |        onefive = this.balance / 5;
    |        onefiveDone = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'NRMc':
    |    if (onefiveDone == false) {
    |        onefive = this.balance / 5;
  > |        onefiveDone = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |        && startDone == false)
    |        {
  > |            balances[owner] = _totalSupply;
    |            _durationInMinutes = durationInMinutes;
    |            deadline = now + durationInMinutes * 1 minutes;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |        {
    |            balances[owner] = _totalSupply;
  > |            _durationInMinutes = durationInMinutes;
    |            deadline = now + durationInMinutes * 1 minutes;
    |            startDone = true;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            balances[owner] = _totalSupply;
    |            _durationInMinutes = durationInMinutes;
  > |            deadline = now + durationInMinutes * 1 minutes;
    |            startDone = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            _durationInMinutes = durationInMinutes;
    |            deadline = now + durationInMinutes * 1 minutes;
  > |            startDone = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            && startDone) 
    |            {
  > |                balances[owner] -= perReserve;
    |                balances[reserve1] += perReserve;
    |                Transfer(owner, reserve1, perReserve);
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            {
    |                balances[owner] -= perReserve;
  > |                balances[reserve1] += perReserve;
    |                Transfer(owner, reserve1, perReserve);
    |                prereserved1Done = true;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |                balances[reserve1] += perReserve;
    |                Transfer(owner, reserve1, perReserve);
  > |                prereserved1Done = true;
    |                backers += 1; 
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |                Transfer(owner, reserve1, perReserve);
    |                prereserved1Done = true;
  > |                backers += 1; 
    |            }
    |    }       
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            && startDone) 
    |            {
  > |                balances[owner] -= perReserve;
    |                balances[reserve2] += perReserve;
    |                Transfer(owner, reserve2, perReserve);
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            {
    |                balances[owner] -= perReserve;
  > |                balances[reserve2] += perReserve;
    |                Transfer(owner, reserve2, perReserve);
    |                prereserved2Done = true;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |                balances[reserve2] += perReserve;
    |                Transfer(owner, reserve2, perReserve);
  > |                prereserved2Done = true;
    |                backers += 1; 
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |                Transfer(owner, reserve2, perReserve);
    |                prereserved2Done = true;
  > |                backers += 1; 
    |            }
    |    }       
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            && startDone) 
    |            {
  > |                balances[owner] -= perReserve;
    |                balances[reserve3] += perReserve;
    |                Transfer(owner, reserve3, perReserve);
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            {
    |                balances[owner] -= perReserve;
  > |                balances[reserve3] += perReserve;
    |                Transfer(owner, reserve3, perReserve);
    |                prereserved3Done = true;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |                balances[reserve3] += perReserve;
    |                Transfer(owner, reserve3, perReserve);
  > |                prereserved3Done = true;
    |                backers += 1; 
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |                Transfer(owner, reserve3, perReserve);
    |                prereserved3Done = true;
  > |                backers += 1; 
    |            }
    |    }       
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            && startDone) 
    |            {
  > |                balances[owner] -= perReserve;
    |                balances[reserve4] += perReserve;
    |                Transfer(owner, reserve4, perReserve);
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            {
    |                balances[owner] -= perReserve;
  > |                balances[reserve4] += perReserve;
    |                Transfer(owner, reserve4, perReserve);
    |                prereserved4Done = true;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |                balances[reserve4] += perReserve;
    |                Transfer(owner, reserve4, perReserve);
  > |                prereserved4Done = true;
    |                backers += 1; 
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |                Transfer(owner, reserve4, perReserve);
    |                prereserved4Done = true;
  > |                backers += 1; 
    |            }
    |    }       
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            && startDone) 
    |            {
  > |                balances[owner] -= perReserve;
    |                balances[reserve5] += perReserve;
    |                Transfer(owner, reserve5, perReserve);
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            {
    |                balances[owner] -= perReserve;
  > |                balances[reserve5] += perReserve;
    |                Transfer(owner, reserve5, perReserve);
    |                prereserved5Done = true;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |                balances[reserve5] += perReserve;
    |                Transfer(owner, reserve5, perReserve);
  > |                prereserved5Done = true;
    |                backers += 1; 
    |            }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |                Transfer(owner, reserve5, perReserve);
    |                prereserved5Done = true;
  > |                backers += 1; 
    |            }
    |    }       
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    | 
    |    function approve(address _spender, uint256 _amount) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |    if (out1 == msg.sender && !out1Done) {
    |        if (out1.send(onefive)) {
  > |           out1Done = true;
    |        } 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |    if (out2 == msg.sender && !out2Done) {
    |        if (out2.send(onefive)) {
  > |           out2Done = true;
    |        } 
    |    }  
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |    if (out3 == msg.sender && !out3Done) {
    |        if (out3.send(onefive)) {
  > |           out3Done = true;
    |        } 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |    if (out4 == msg.sender && !out4Done) {
    |        if (out4.send(onefive)) {
  > |           out4Done = true;
    |        } 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'NRMc':
    |    if (out5 == msg.sender && !out5Done) {
    |        if (out5.send(onefive)) {
  > |           out5Done = true;
    |        } 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f1408e206d23d446e1580830f11f79c2e58d92b.sol(257)


