Processing contract: /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol:Base
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol:DepositBank
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(49)

[33mWarning[0m for DAOConstantGas in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(59)

[33mWarning[0m for DAOConstantGas in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(69)

[33mWarning[0m for LockedEther in contract 'Base':
    |pragma solidity ^0.4.18;
    |
  > |contract Base 
    |{
    |    address newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Base':
    |    }
    |    
  > |    function changeOwner(address addr)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'Base':
    |    }
    |    
  > |    function WthdrawToCreator(uint val)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'Base':
    |    }
    |    
  > |    function WthdrawTo(address addr,uint val)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'Base':
    |    }
    |    
  > |    function WithdrawToken(address token, uint256 amount)
    |    public 
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    address creator = msg.sender;
    |    
  > |    function isOwner()
    |    internal
    |    constant
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    }
    |    
  > |    function confirmOwner()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    }
    |    
  > |    function WthdrawAllToCreator()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(43)

[31mViolation[0m for TODAmount in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(49)

[33mWarning[0m for TODAmount in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(59)

[33mWarning[0m for TODAmount in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(69)

[33mWarning[0m for TODReceiver in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(49)

[33mWarning[0m for TODReceiver in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(59)

[33mWarning[0m for TODReceiver in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(69)

[31mViolation[0m for UnhandledException in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            token.call(bytes4(sha3("transfer(address,uint256)")),creator,amount); 
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(78)

[33mWarning[0m for UnhandledException in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(49)

[33mWarning[0m for UnhandledException in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(59)

[33mWarning[0m for UnhandledException in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(49)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(59)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Base':
    |        if(msg.sender==creator)
    |        {
  > |            token.call(bytes4(sha3("transfer(address,uint256)")),creator,amount); 
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Base':
    |        if(isOwner())
    |        {
  > |            newOwner = addr;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Base':
    |        if(msg.sender==newOwner)
    |        {
  > |            owner=newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(31)

[31mViolation[0m for DAOConstantGas in contract 'DepositBank':
    |            if(isOwner())
    |            {
  > |                if(_addr.send(_wei))
    |                {
    |                    if(CharterCapital>=_wei)CharterCapital-=_wei;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(214)

[33mWarning[0m for DAOConstantGas in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(49)

[33mWarning[0m for DAOConstantGas in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(59)

[33mWarning[0m for DAOConstantGas in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(69)

[33mWarning[0m for DAOConstantGas in contract 'DepositBank':
    |            uint profit = Lenders[msg.sender].Reserved;
    |            Lenders[msg.sender].Reserved = 0;
  > |            msg.sender.transfer(profit);        
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(162)

[33mWarning[0m for LockedEther in contract 'DepositBank':
    |}
    |
  > |contract DepositBank is Base
    |{
    |    uint public SponsorsQty;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    
  > |    function changeOwner(address addr)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    
  > |    function WthdrawToCreator(uint val)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    
  > |    function WthdrawTo(address addr,uint val)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    
  > |    function WithdrawToken(address token, uint256 amount)
    |    public 
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    
  > |    mapping (address => uint) public Sponsors;
    |    
    |    mapping (address => Lender) public Lenders;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'DepositBank':
    |    mapping (address => uint) public Sponsors;
    |    
  > |    mapping (address => Lender) public Lenders;
    |    
    |    event StartOfPayments(address indexed calledFrom, uint time);
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    
  > |    function CheckProfit(address addr) 
    |    constant 
    |    returns(uint)
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'DepositBank':
    |    
    |    
  > |    function AuthorizePayments(bool val)
    |    {
    |        if(isOwner())
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(184)

[31mViolation[0m for MissingInputValidation in contract 'DepositBank':
    |        }
    |    }
  > |    function WithdrawToSponsor(address _addr, uint _wei)
    |    payable
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    address creator = msg.sender;
    |    
  > |    function isOwner()
    |    internal
    |    constant
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    
  > |    function confirmOwner()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    
  > |    function WthdrawAllToCreator()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |contract DepositBank is Base
    |{
  > |    uint public SponsorsQty;
    |    
    |    uint public CharterCapital;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    uint public SponsorsQty;
    |    
  > |    uint public CharterCapital;
    |    
    |    uint public ClientQty;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    uint public CharterCapital;
    |    
  > |    uint public ClientQty;
    |    
    |    uint public PrcntRate = 1;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    uint public ClientQty;
    |    
  > |    uint public PrcntRate = 1;
    |    
    |    uint public MinPayment;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    uint public PrcntRate = 1;
    |    
  > |    uint public MinPayment;
    |    
    |    bool paymentsAllowed;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    
    |    ///Constructor
  > |    function init()
    |    Public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    // investors================================================================
    |    
  > |    function Deposit() 
    |    payable
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    
  > |    function FixProfit()
    |    {
    |        if(Lenders[msg.sender].Amount>0)
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    
  > |    function WitdrawLenderProfit()
    |    payable
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    // sponsors ================================================================
    |    
  > |    function ToSponsor() 
    |    payable
    |    {
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |        }
    |    }
  > |    function StartPaymens()
    |    {
    |        if(isOwner())
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |        }
    |    }
  > |    function StopPaymens()
    |    {
    |        if(isOwner())
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'DepositBank':
    |    }
    |    modifier Public{if(!finalized)_;} bool finalized;
  > |    function Fin(){if(isOwner()){finalized = true;}}
    |    
    |   
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(223)

[31mViolation[0m for TODAmount in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(49)

[33mWarning[0m for TODAmount in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(59)

[33mWarning[0m for TODAmount in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(69)

[33mWarning[0m for TODAmount in contract 'DepositBank':
    |            if(isOwner())
    |            {
  > |                if(_addr.send(_wei))
    |                {
    |                    if(CharterCapital>=_wei)CharterCapital-=_wei;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(214)

[33mWarning[0m for TODReceiver in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(49)

[33mWarning[0m for TODReceiver in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(59)

[33mWarning[0m for TODReceiver in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(69)

[33mWarning[0m for TODReceiver in contract 'DepositBank':
    |            uint profit = Lenders[msg.sender].Reserved;
    |            Lenders[msg.sender].Reserved = 0;
  > |            msg.sender.transfer(profit);        
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(162)

[33mWarning[0m for TODReceiver in contract 'DepositBank':
    |            if(isOwner())
    |            {
  > |                if(_addr.send(_wei))
    |                {
    |                    if(CharterCapital>=_wei)CharterCapital-=_wei;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(214)

[31mViolation[0m for UnhandledException in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            token.call(bytes4(sha3("transfer(address,uint256)")),creator,amount); 
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(78)

[33mWarning[0m for UnhandledException in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(49)

[33mWarning[0m for UnhandledException in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(59)

[33mWarning[0m for UnhandledException in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(69)

[33mWarning[0m for UnhandledException in contract 'DepositBank':
    |            uint profit = Lenders[msg.sender].Reserved;
    |            Lenders[msg.sender].Reserved = 0;
  > |            msg.sender.transfer(profit);        
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(162)

[33mWarning[0m for UnhandledException in contract 'DepositBank':
    |            if(isOwner())
    |            {
  > |                if(_addr.send(_wei))
    |                {
    |                    if(CharterCapital>=_wei)CharterCapital-=_wei;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(49)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(59)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositBank':
    |        if(msg.sender==creator)
    |        {
  > |            token.call(bytes4(sha3("transfer(address,uint256)")),creator,amount); 
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(78)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DepositBank':
    |            if(isOwner())
    |            {
  > |                if(_addr.send(_wei))
    |                {
    |                    if(CharterCapital>=_wei)CharterCapital-=_wei;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'DepositBank':
    |    Public
    |    {
  > |        owner = msg.sender;
    |        PrcntRate = 5;
    |        MinPayment = 1 ether;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'DepositBank':
    |    {
    |        owner = msg.sender;
  > |        PrcntRate = 5;
    |        MinPayment = 1 ether;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'DepositBank':
    |        owner = msg.sender;
    |        PrcntRate = 5;
  > |        MinPayment = 1 ether;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'DepositBank':
    |    {
    |        FixProfit();//fix time inside
  > |        Lenders[msg.sender].Amount += msg.value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'DepositBank':
    |        if(Lenders[msg.sender].Amount>0)
    |        {
  > |            Lenders[msg.sender].Reserved += CheckProfit(msg.sender);
    |        }
    |        Lenders[msg.sender].LastLendTime=now;
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'DepositBank':
    |            Lenders[msg.sender].Reserved += CheckProfit(msg.sender);
    |        }
  > |        Lenders[msg.sender].LastLendTime=now;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'DepositBank':
    |            FixProfit();
    |            uint profit = Lenders[msg.sender].Reserved;
  > |            Lenders[msg.sender].Reserved = 0;
    |            msg.sender.transfer(profit);        
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'DepositBank':
    |            if(Sponsors[msg.sender]==0)SponsorsQty++;
    |            Sponsors[msg.sender]+=msg.value;
  > |            CharterCapital+=msg.value;
    |        }   
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositBank':
    |        if(isOwner())
    |        {
  > |            newOwner = addr;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositBank':
    |        if(msg.sender==newOwner)
    |        {
  > |            owner=newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositBank':
    |        {
    |            if(Sponsors[msg.sender]==0)SponsorsQty++;
  > |            Sponsors[msg.sender]+=msg.value;
    |            CharterCapital+=msg.value;
    |        }   
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositBank':
    |        if(isOwner())
    |        {
  > |            paymentsAllowed = val;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositBank':
    |                if(_addr.send(_wei))
    |                {
  > |                    if(CharterCapital>=_wei)CharterCapital-=_wei;
    |                    else CharterCapital=0;
    |                    }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositBank':
    |                {
    |                    if(CharterCapital>=_wei)CharterCapital-=_wei;
  > |                    else CharterCapital=0;
    |                    }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'DepositBank':
    |    }
    |    modifier Public{if(!finalized)_;} bool finalized;
  > |    function Fin(){if(isOwner()){finalized = true;}}
    |    
    |   
  at /home/jiaming/mavs_srcs/contract@0x4eb3ce14fda3a874ecad0e9ad988258c827bae82.sol(223)


