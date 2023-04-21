Processing contract: /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol:WalletClub
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Owned':
    |        if(msg.sender==admin)
    |        {
  > |            admin.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(66)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned 
    |{
    |    address admin = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |     
  > |    function changeOwner(address addr)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function WithdrawToAdmin(uint val)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address newOwner;
    |
  > |    function isOwner()
    |    public
    |    constant
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function confirmOwner()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(52)

[33mWarning[0m for TODAmount in contract 'Owned':
    |        if(msg.sender==admin)
    |        {
  > |            admin.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(66)

[33mWarning[0m for TODReceiver in contract 'Owned':
    |        if(msg.sender==admin)
    |        {
  > |            admin.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(66)

[33mWarning[0m for UnhandledException in contract 'Owned':
    |        if(msg.sender==admin)
    |        {
  > |            admin.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(66)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Owned':
    |        if(msg.sender==admin)
    |        {
  > |            admin.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        if(isOwner())
    |        {
  > |            newOwner = addr;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        if(msg.sender==newOwner)
    |        {
  > |            owner=newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(57)

[31mViolation[0m for DAOConstantGas in contract 'WalletClub':
    |            if(isOwner())
    |            {
  > |                 if(_addr.send(_wei))
    |                 {
    |                   if(TotalFunds>=_wei)TotalFunds-=_wei;
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(109)

[33mWarning[0m for DAOConstantGas in contract 'WalletClub':
    |        if(msg.sender==admin)
    |        {
  > |            admin.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(66)

[33mWarning[0m for LockedEther in contract 'WalletClub':
    |}
    |
  > |contract WalletClub is Owned
    |{
    |    mapping (address => uint) public Members;
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'WalletClub':
    |    }
    |     
  > |    function changeOwner(address addr)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'WalletClub':
    |    }
    |
  > |    function WithdrawToAdmin(uint val)
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'WalletClub':
    |contract WalletClub is Owned
    |{
  > |    mapping (address => uint) public Members;
    |    address public owner;
    |    uint256 public TotalFunds;
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'WalletClub':
    |    }
    |    
  > |    function WithdrawToMember(address _addr, uint _wei)
    |    public 
    |    {
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'WalletClub':
    |    address newOwner;
    |
  > |    function isOwner()
    |    public
    |    constant
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'WalletClub':
    |    }
    |    
  > |    function confirmOwner()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'WalletClub':
    |{
    |    mapping (address => uint) public Members;
  > |    address public owner;
    |    uint256 public TotalFunds;
    |     
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'WalletClub':
    |    mapping (address => uint) public Members;
    |    address public owner;
  > |    uint256 public TotalFunds;
    |     
    |    function initWallet()
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'WalletClub':
    |    uint256 public TotalFunds;
    |     
  > |    function initWallet()
    |    public
    |    {
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'WalletClub':
    |    }
    |
  > |    function TopUpMember()
    |    public
    |    payable
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(84)

[33mWarning[0m for TODAmount in contract 'WalletClub':
    |        if(msg.sender==admin)
    |        {
  > |            admin.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(66)

[33mWarning[0m for TODAmount in contract 'WalletClub':
    |            if(isOwner())
    |            {
  > |                 if(_addr.send(_wei))
    |                 {
    |                   if(TotalFunds>=_wei)TotalFunds-=_wei;
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(109)

[33mWarning[0m for TODReceiver in contract 'WalletClub':
    |        if(msg.sender==admin)
    |        {
  > |            admin.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(66)

[33mWarning[0m for TODReceiver in contract 'WalletClub':
    |            if(isOwner())
    |            {
  > |                 if(_addr.send(_wei))
    |                 {
    |                   if(TotalFunds>=_wei)TotalFunds-=_wei;
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(109)

[33mWarning[0m for UnhandledException in contract 'WalletClub':
    |        if(msg.sender==admin)
    |        {
  > |            admin.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(66)

[33mWarning[0m for UnhandledException in contract 'WalletClub':
    |            if(isOwner())
    |            {
  > |                 if(_addr.send(_wei))
    |                 {
    |                   if(TotalFunds>=_wei)TotalFunds-=_wei;
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(109)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WalletClub':
    |        if(msg.sender==admin)
    |        {
  > |            admin.transfer(val);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(66)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WalletClub':
    |            if(isOwner())
    |            {
  > |                 if(_addr.send(_wei))
    |                 {
    |                   if(TotalFunds>=_wei)TotalFunds-=_wei;
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'WalletClub':
    |    public
    |    {
  > |        owner = msg.sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'WalletClub':
    |        {
    |            Members[msg.sender]+=msg.value;
  > |            TotalFunds += msg.value;
    |        }   
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'WalletClub':
    |        if(isOwner())
    |        {
  > |            newOwner = addr;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'WalletClub':
    |        if(msg.sender==newOwner)
    |        {
  > |            owner=newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'WalletClub':
    |        if(msg.value >= 1 ether)
    |        {
  > |            Members[msg.sender]+=msg.value;
    |            TotalFunds += msg.value;
    |        }   
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'WalletClub':
    |                 if(_addr.send(_wei))
    |                 {
  > |                   if(TotalFunds>=_wei)TotalFunds-=_wei;
    |                   else TotalFunds=0;
    |                 }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'WalletClub':
    |                 {
    |                   if(TotalFunds>=_wei)TotalFunds-=_wei;
  > |                   else TotalFunds=0;
    |                 }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x50abfc76b637b70571c301071f7ce660c1c3d847.sol(112)


