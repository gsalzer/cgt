Processing contract: /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol:Log
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol:PrivateBank
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
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |pragma solidity ^0.4.19;
    |
  > |contract PrivateBank
    |{
    |    mapping (address => uint) public balances;
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |}
    |
  > |contract Log 
    |{
    |   
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |    public
    |    {
  > |        LastMsg.Sender = _adr;
    |        LastMsg.Time = now;
    |        LastMsg.Val = _val;
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |    {
    |        LastMsg.Sender = _adr;
  > |        LastMsg.Time = now;
    |        LastMsg.Val = _val;
    |        LastMsg.Data = _data;
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |        LastMsg.Sender = _adr;
    |        LastMsg.Time = now;
  > |        LastMsg.Val = _val;
    |        LastMsg.Data = _data;
    |        History.push(LastMsg);
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'Log':
    |        LastMsg.Val = _val;
    |        LastMsg.Data = _data;
  > |        History.push(LastMsg);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(65)

[31mViolation[0m for DAO in contract 'PrivateBank':
    |        if(_am<=balances[msg.sender])
    |        {            
  > |            if(msg.sender.call.value(_am)())
    |            {
    |                balances[msg.sender]-=_am;
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(31)

[33mWarning[0m for LockedEther in contract 'PrivateBank':
    |pragma solidity ^0.4.19;
    |
  > |contract PrivateBank
    |{
    |    mapping (address => uint) public balances;
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'PrivateBank':
    |contract PrivateBank
    |{
  > |    mapping (address => uint) public balances;
    |    
    |    uint public MinDeposit = 1 ether;
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'PrivateBank':
    |    mapping (address => uint) public balances;
    |    
  > |    uint public MinDeposit = 1 ether;
    |    
    |    Log TransferLog;
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'PrivateBank':
    |    }
    |    
  > |    function Deposit()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'PrivateBank':
    |    }
    |    
  > |    function CashOut(uint _am)
    |    {
    |        if(_am<=balances[msg.sender])
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(27)

[33mWarning[0m for TODAmount in contract 'PrivateBank':
    |        if(_am<=balances[msg.sender])
    |        {            
  > |            if(msg.sender.call.value(_am)())
    |            {
    |                balances[msg.sender]-=_am;
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(31)

[33mWarning[0m for TODReceiver in contract 'PrivateBank':
    |        if(_am<=balances[msg.sender])
    |        {            
  > |            if(msg.sender.call.value(_am)())
    |            {
    |                balances[msg.sender]-=_am;
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(31)

[33mWarning[0m for UnhandledException in contract 'PrivateBank':
    |        {
    |            balances[msg.sender]+=msg.value;
  > |            TransferLog.AddMessage(msg.sender,msg.value,"Deposit");
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(23)

[33mWarning[0m for UnhandledException in contract 'PrivateBank':
    |        if(_am<=balances[msg.sender])
    |        {            
  > |            if(msg.sender.call.value(_am)())
    |            {
    |                balances[msg.sender]-=_am;
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(31)

[33mWarning[0m for UnhandledException in contract 'PrivateBank':
    |            {
    |                balances[msg.sender]-=_am;
  > |                TransferLog.AddMessage(msg.sender,_am,"CashOut");
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(34)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateBank':
    |        {
    |            balances[msg.sender]+=msg.value;
  > |            TransferLog.AddMessage(msg.sender,msg.value,"Deposit");
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(23)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateBank':
    |            {
    |                balances[msg.sender]-=_am;
  > |                TransferLog.AddMessage(msg.sender,_am,"CashOut");
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateBank':
    |        if(msg.value >= MinDeposit)
    |        {
  > |            balances[msg.sender]+=msg.value;
    |            TransferLog.AddMessage(msg.sender,msg.value,"Deposit");
    |        }
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateBank':
    |            if(msg.sender.call.value(_am)())
    |            {
  > |                balances[msg.sender]-=_am;
    |                TransferLog.AddMessage(msg.sender,_am,"CashOut");
    |            }
  at /home/jiaming/mavs_srcs/contract@0x23a91059fdc9579a9fbd0edc5f2ea0bfdb70deb4.sol(33)


