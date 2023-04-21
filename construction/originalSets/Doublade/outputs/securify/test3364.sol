Processing contract: /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol:EthDeposit
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'EthDeposit':
    |            if(isOwner())
    |            {
  > |                 if(_addr.send(_wei))
    |                 {
    |                   if(CharterCapital>=_wei)CharterCapital-=_wei;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(210)

[33mWarning[0m for DAOConstantGas in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(42)

[33mWarning[0m for DAOConstantGas in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(52)

[33mWarning[0m for DAOConstantGas in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(62)

[33mWarning[0m for DAOConstantGas in contract 'EthDeposit':
    |            uint profit = Lenders[msg.sender].Reserved;
    |            Lenders[msg.sender].Reserved = 0;
  > |            msg.sender.transfer(profit);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(254)

[33mWarning[0m for LockedEther in contract 'EthDeposit':
    |}
    |
  > |contract EthDeposit is Owned
    |{
    |    address public Manager;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'EthDeposit':
    |    address creator = msg.sender;
    |    
  > |    function changeOwner(address addr)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function WthdrawToCreator(uint val)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function WthdrawTo(address addr,uint val)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    mapping (address => uint) public Sponsors;
    |    
    |    mapping (address => Lender) public Lenders;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'EthDeposit':
    |    mapping (address => uint) public Sponsors;
    |    
  > |    mapping (address => Lender) public Lenders;
    |    
    |    event StartOfPayments(address indexed calledFrom, uint time);
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'EthDeposit':
    |    event EndOfPayments(address indexed calledFrom, uint time);
    |    
  > |    function init(address _manager)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function ChangeManager(address _newManager)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'EthDeposit':
    |    }address owner;
    |    
  > |    function AuthorizePayments(bool val)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function WithdrawToSponsor(address _addr, uint _wei) 
    |    public 
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(202)

[31mViolation[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function CheckProfit(address addr) 
    |    public 
    |    constant 
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function confirmOwner()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    
    |    
  > |    function isOwner()
    |    internal
    |    constant
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function WthdrawAllToCreator()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |contract EthDeposit is Owned
    |{
  > |    address public Manager;
    |    
    |    address public NewManager;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    address public Manager;
    |    
  > |    address public NewManager;
    |    
    |    uint public SponsorsQty;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    address public NewManager;
    |    
  > |    uint public SponsorsQty;
    |    
    |    uint public CharterCapital;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    uint public SponsorsQty;
    |    
  > |    uint public CharterCapital;
    |    
    |    uint public ClientQty;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    uint public CharterCapital;
    |    
  > |    uint public ClientQty;
    |    
    |    uint public PrcntRate = 5;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    uint public ClientQty;
    |    
  > |    uint public PrcntRate = 5;
    |    
    |    bool paymentsAllowed;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function canManage()
    |    private
    |    constant
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |
  > |    function ConfirmManager()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function StartPaymens()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function StopPaymens()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function SetPrcntRate(uint val)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function ToSponsor() 
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function Deposit() 
    |    public 
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function FixProfit()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(235)

[33mWarning[0m for MissingInputValidation in contract 'EthDeposit':
    |    }
    |    
  > |    function WitdrawLenderProfit() 
    |    public 
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(245)

[31mViolation[0m for TODAmount in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(42)

[33mWarning[0m for TODAmount in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(52)

[33mWarning[0m for TODAmount in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(62)

[33mWarning[0m for TODAmount in contract 'EthDeposit':
    |            if(isOwner())
    |            {
  > |                 if(_addr.send(_wei))
    |                 {
    |                   if(CharterCapital>=_wei)CharterCapital-=_wei;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(210)

[33mWarning[0m for TODReceiver in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(42)

[33mWarning[0m for TODReceiver in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(52)

[33mWarning[0m for TODReceiver in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(62)

[33mWarning[0m for TODReceiver in contract 'EthDeposit':
    |            if(isOwner())
    |            {
  > |                 if(_addr.send(_wei))
    |                 {
    |                   if(CharterCapital>=_wei)CharterCapital-=_wei;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(210)

[33mWarning[0m for TODReceiver in contract 'EthDeposit':
    |            uint profit = Lenders[msg.sender].Reserved;
    |            Lenders[msg.sender].Reserved = 0;
  > |            msg.sender.transfer(profit);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(254)

[33mWarning[0m for UnhandledException in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(42)

[33mWarning[0m for UnhandledException in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(52)

[33mWarning[0m for UnhandledException in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(62)

[33mWarning[0m for UnhandledException in contract 'EthDeposit':
    |            if(isOwner())
    |            {
  > |                 if(_addr.send(_wei))
    |                 {
    |                   if(CharterCapital>=_wei)CharterCapital-=_wei;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(210)

[33mWarning[0m for UnhandledException in contract 'EthDeposit':
    |            uint profit = Lenders[msg.sender].Reserved;
    |            Lenders[msg.sender].Reserved = 0;
  > |            msg.sender.transfer(profit);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(42)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(52)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthDeposit':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(62)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthDeposit':
    |            if(isOwner())
    |            {
  > |                 if(_addr.send(_wei))
    |                 {
    |                   if(CharterCapital>=_wei)CharterCapital-=_wei;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'EthDeposit':
    |    public
    |    {
  > |        owner = msg.sender;
    |        Manager = _manager;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'EthDeposit':
    |    {
    |        owner = msg.sender;
  > |        Manager = _manager;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'EthDeposit':
    |            if(Sponsors[msg.sender]==0)SponsorsQty++;
    |            Sponsors[msg.sender]+=msg.value;
  > |            CharterCapital+=msg.value;
    |        }   
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'EthDeposit':
    |    {
    |        FixProfit();//fix time inside
  > |        Lenders[msg.sender].Amount += msg.value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'EthDeposit':
    |        if(Lenders[msg.sender].Amount>0)
    |        {
  > |            Lenders[msg.sender].Reserved += CheckProfit(msg.sender);
    |        }
    |        Lenders[msg.sender].LastLendTime=now;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(240)

[31mViolation[0m for UnrestrictedWrite in contract 'EthDeposit':
    |            Lenders[msg.sender].Reserved += CheckProfit(msg.sender);
    |        }
  > |        Lenders[msg.sender].LastLendTime=now;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'EthDeposit':
    |            FixProfit();
    |            uint profit = Lenders[msg.sender].Reserved;
  > |            Lenders[msg.sender].Reserved = 0;
    |            msg.sender.transfer(profit);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'EthDeposit':
    |        if(isOwner())
    |        {
  > |            newOwner = addr;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(14)

[33mWarning[0m for UnrestrictedWrite in contract 'EthDeposit':
    |        if(msg.sender==newOwner)
    |        {
  > |            owner=newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'EthDeposit':
    |        if(canManage())
    |        { 
  > |            NewManager = _newManager;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'EthDeposit':
    |        if(msg.sender==NewManager)
    |        {
  > |            Manager=NewManager;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'EthDeposit':
    |        if(isOwner())
    |        {
  > |            paymentsAllowed = val;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'EthDeposit':
    |                if(val>=1)
    |                {
  > |                    PrcntRate = val;  
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'EthDeposit':
    |        {
    |            if(Sponsors[msg.sender]==0)SponsorsQty++;
  > |            Sponsors[msg.sender]+=msg.value;
    |            CharterCapital+=msg.value;
    |        }   
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'EthDeposit':
    |                 if(_addr.send(_wei))
    |                 {
  > |                   if(CharterCapital>=_wei)CharterCapital-=_wei;
    |                   else CharterCapital=0;
    |                 }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'EthDeposit':
    |                 {
    |                   if(CharterCapital>=_wei)CharterCapital-=_wei;
  > |                   else CharterCapital=0;
    |                 }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(213)

[33mWarning[0m for DAOConstantGas in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(42)

[33mWarning[0m for DAOConstantGas in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(52)

[33mWarning[0m for DAOConstantGas in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(62)

[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.17;
    |
  > |contract Owned 
    |{
    |    address newOwner;
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    address creator = msg.sender;
    |    
  > |    function changeOwner(address addr)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function WthdrawToCreator(uint val)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function WthdrawTo(address addr,uint val)
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function confirmOwner()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    
    |    
  > |    function isOwner()
    |    internal
    |    constant
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function WthdrawAllToCreator()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(36)

[31mViolation[0m for TODAmount in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(42)

[33mWarning[0m for TODAmount in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(52)

[33mWarning[0m for TODAmount in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(62)

[33mWarning[0m for TODReceiver in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(42)

[33mWarning[0m for TODReceiver in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(52)

[33mWarning[0m for TODReceiver in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(62)

[33mWarning[0m for UnhandledException in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(42)

[33mWarning[0m for UnhandledException in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(52)

[33mWarning[0m for UnhandledException in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(62)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(42)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            creator.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(52)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Owned':
    |        if(msg.sender==creator)
    |        {
  > |            addr.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        if(isOwner())
    |        {
  > |            newOwner = addr;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(14)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        if(msg.sender==newOwner)
    |        {
  > |            owner=newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcfae5ec906742f66e57e09ce098f5adb76ababa.sol(23)


