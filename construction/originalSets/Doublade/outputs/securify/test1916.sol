Processing contract: /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol:Log
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol:PrivateDeposit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Log':
    |}
    |
  > |contract Log 
    |{
    |   
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |pragma solidity ^0.4.19;
    |
  > |contract PrivateDeposit
    |{
    |    mapping (address => uint) public balances;
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |}
    |
  > |contract Log 
    |{
    |   
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |    public
    |    {
  > |        LastMsg.Sender = _adr;
    |        LastMsg.Time = now;
    |        LastMsg.Val = _val;
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |    {
    |        LastMsg.Sender = _adr;
  > |        LastMsg.Time = now;
    |        LastMsg.Val = _val;
    |        LastMsg.Data = _data;
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |        LastMsg.Sender = _adr;
    |        LastMsg.Time = now;
  > |        LastMsg.Val = _val;
    |        LastMsg.Data = _data;
    |        History.push(LastMsg);
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |        LastMsg.Val = _val;
    |        LastMsg.Data = _data;
  > |        History.push(LastMsg);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(79)

[31mViolation[0m for DAO in contract 'PrivateDeposit':
    |        if(_am<=balances[msg.sender])
    |        {            
  > |            if(msg.sender.call.value(_am)())
    |            {
    |                balances[msg.sender]-=_am;
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(45)

[33mWarning[0m for LockedEther in contract 'PrivateDeposit':
    |pragma solidity ^0.4.19;
    |
  > |contract PrivateDeposit
    |{
    |    mapping (address => uint) public balances;
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'PrivateDeposit':
    |contract PrivateDeposit
    |{
  > |    mapping (address => uint) public balances;
    |        
    |    uint public MinDeposit = 1 ether;
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'PrivateDeposit':
    |    
    |    
  > |    function setLog(address _lib) onlyOwner
    |    {
    |        TransferLog = Log(_lib);
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'PrivateDeposit':
    |    mapping (address => uint) public balances;
    |        
  > |    uint public MinDeposit = 1 ether;
    |    address public owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'PrivateDeposit':
    |        
    |    uint public MinDeposit = 1 ether;
  > |    address public owner;
    |    
    |    Log TransferLog;
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'PrivateDeposit':
    |    }    
    |    
  > |    function Deposit()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'PrivateDeposit':
    |    }
    |    
  > |    function CashOut(uint _am)
    |    {
    |        if(_am<=balances[msg.sender])
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(41)

[33mWarning[0m for TODAmount in contract 'PrivateDeposit':
    |        if(_am<=balances[msg.sender])
    |        {            
  > |            if(msg.sender.call.value(_am)())
    |            {
    |                balances[msg.sender]-=_am;
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(45)

[33mWarning[0m for TODReceiver in contract 'PrivateDeposit':
    |        if(_am<=balances[msg.sender])
    |        {            
  > |            if(msg.sender.call.value(_am)())
    |            {
    |                balances[msg.sender]-=_am;
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(45)

[33mWarning[0m for UnhandledException in contract 'PrivateDeposit':
    |        {
    |            balances[msg.sender]+=msg.value;
  > |            TransferLog.AddMessage(msg.sender,msg.value,"Deposit");
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(37)

[33mWarning[0m for UnhandledException in contract 'PrivateDeposit':
    |        if(_am<=balances[msg.sender])
    |        {            
  > |            if(msg.sender.call.value(_am)())
    |            {
    |                balances[msg.sender]-=_am;
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(45)

[33mWarning[0m for UnhandledException in contract 'PrivateDeposit':
    |            {
    |                balances[msg.sender]-=_am;
  > |                TransferLog.AddMessage(msg.sender,_am,"CashOut");
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(48)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateDeposit':
    |        {
    |            balances[msg.sender]+=msg.value;
  > |            TransferLog.AddMessage(msg.sender,msg.value,"Deposit");
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(37)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateDeposit':
    |            {
    |                balances[msg.sender]-=_am;
  > |                TransferLog.AddMessage(msg.sender,_am,"CashOut");
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'PrivateDeposit':
    |    function setLog(address _lib) onlyOwner
    |    {
  > |        TransferLog = Log(_lib);
    |    }    
    |    
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateDeposit':
    |        if(msg.value >= MinDeposit)
    |        {
  > |            balances[msg.sender]+=msg.value;
    |            TransferLog.AddMessage(msg.sender,msg.value,"Deposit");
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateDeposit':
    |            if(msg.sender.call.value(_am)())
    |            {
  > |                balances[msg.sender]-=_am;
    |                TransferLog.AddMessage(msg.sender,_am,"CashOut");
    |            }
  at /home/jiaming/mavs_srcs/contract@0x7a8721a9d64c74da899424c1b52acbf58ddc9782.sol(47)


