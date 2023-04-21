Processing contract: /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol:EvoNineToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol:StdToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'EvoNineToken':
    |        if (this.balance > 0)
    |        {
  > |            escrowAddress.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(285)

[33mWarning[0m for LockedEther in contract 'EvoNineToken':
    |}
    |// EvoNineToken
  > |contract EvoNineToken is StdToken
    |{
    |    /// Fields:
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    /// Overrides:
  > |    function transferTo(address _to, uint256 _value) public returns (bool){
    |        require(enableTransfers);
    |        return super.transferTo(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(290)

[31mViolation[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool){
    |        require(enableTransfers);
    |        return super.transferFrom(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(295)

[31mViolation[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    // Setters/getters
  > |    function ChangetokenManagerAddress(address _mgr) public onlytokenManagerAddress
    |    {
    |        tokenManagerAddress = _mgr;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(306)

[31mViolation[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    // Setters/getters
  > |    function ChangeCrowner(address _mgr) public onlyTokenCrowner
    |    {
    |        escrowAddress = _mgr;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal pure returns (uint) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal pure returns (uint) {
    |        uint c = a + b;
    |        assert(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    mapping(address => uint256) balances;
    |    mapping(address => mapping(address => uint256)) allowed;
  > |    uint public supply = 0;
    |
    |    // Functions:
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    // Functions:
  > |    function transferTo(address _to, uint256 _value) public returns (bool) {
    |        require(balances[msg.sender] >= _value);
    |        require(balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool){
    |        require(balances[_from] >= _value);
    |        require(allowed[_from][msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function totalSupply() public constant returns (uint256) {
    |        return supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool) {
    |        // To change the approve amount you first have to reduce the addresses`
    |        //  allowance to zero by calling `approve(_spender, 0)` if it is not
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |{
    |    /// Fields:
  > |    string public name = "";
    |    string public symbol = "EVG";
    |    string public website = "https://evonine.co";
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    /// Fields:
    |    string public name = "";
  > |    string public symbol = "EVG";
    |    string public website = "https://evonine.co";
    |    uint public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    string public name = "";
    |    string public symbol = "EVG";
  > |    string public website = "https://evonine.co";
    |    uint public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    string public symbol = "EVG";
    |    string public website = "https://evonine.co";
  > |    uint public decimals = 18;
    |
    |    uint public constant TOTAL_SUPPLY = 19000000 * (1 ether / 1 wei);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public decimals = 18;
    |
  > |    uint public constant TOTAL_SUPPLY = 19000000 * (1 ether / 1 wei);
    |    uint public constant DEVELOPER_BONUS = 4500000 * (1 ether / 1 wei);
    |    uint public constant TEAM_BONUS = 3800000 * (1 ether / 1 wei);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    uint public constant TOTAL_SUPPLY = 19000000 * (1 ether / 1 wei);
  > |    uint public constant DEVELOPER_BONUS = 4500000 * (1 ether / 1 wei);
    |    uint public constant TEAM_BONUS = 3800000 * (1 ether / 1 wei);
    |    uint public constant ECO_SYSTEM_BONUS = 5700000 * (1 ether / 1 wei);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public constant TOTAL_SUPPLY = 19000000 * (1 ether / 1 wei);
    |    uint public constant DEVELOPER_BONUS = 4500000 * (1 ether / 1 wei);
  > |    uint public constant TEAM_BONUS = 3800000 * (1 ether / 1 wei);
    |    uint public constant ECO_SYSTEM_BONUS = 5700000 * (1 ether / 1 wei);
    |    uint public constant CONTRACT_HOLDER_BONUS = 5000000 * (1 ether / 1 wei);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public constant DEVELOPER_BONUS = 4500000 * (1 ether / 1 wei);
    |    uint public constant TEAM_BONUS = 3800000 * (1 ether / 1 wei);
  > |    uint public constant ECO_SYSTEM_BONUS = 5700000 * (1 ether / 1 wei);
    |    uint public constant CONTRACT_HOLDER_BONUS = 5000000 * (1 ether / 1 wei);
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public constant TEAM_BONUS = 3800000 * (1 ether / 1 wei);
    |    uint public constant ECO_SYSTEM_BONUS = 5700000 * (1 ether / 1 wei);
  > |    uint public constant CONTRACT_HOLDER_BONUS = 5000000 * (1 ether / 1 wei);
    |
    |    uint public constant ICO_PRICE1 = 2000;     // per 1 Ether
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public constant CONTRACT_HOLDER_BONUS = 5000000 * (1 ether / 1 wei);
    |
  > |    uint public constant ICO_PRICE1 = 2000;     // per 1 Ether
    |    uint public constant ICO_PRICE2 = 1818;     // per 1 Ether
    |    uint public constant ICO_PRICE3 = 1666;     // per 1 Ether
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    uint public constant ICO_PRICE1 = 2000;     // per 1 Ether
  > |    uint public constant ICO_PRICE2 = 1818;     // per 1 Ether
    |    uint public constant ICO_PRICE3 = 1666;     // per 1 Ether
    |    uint public constant ICO_PRICE4 = 1538;     // per 1 Ether
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public constant ICO_PRICE1 = 2000;     // per 1 Ether
    |    uint public constant ICO_PRICE2 = 1818;     // per 1 Ether
  > |    uint public constant ICO_PRICE3 = 1666;     // per 1 Ether
    |    uint public constant ICO_PRICE4 = 1538;     // per 1 Ether
    |    uint public constant ICO_PRICE5 = 1250;     // per 1 Ether
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public constant ICO_PRICE2 = 1818;     // per 1 Ether
    |    uint public constant ICO_PRICE3 = 1666;     // per 1 Ether
  > |    uint public constant ICO_PRICE4 = 1538;     // per 1 Ether
    |    uint public constant ICO_PRICE5 = 1250;     // per 1 Ether
    |    uint public constant ICO_PRICE6 = 1000;     // per 1 Ether
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public constant ICO_PRICE3 = 1666;     // per 1 Ether
    |    uint public constant ICO_PRICE4 = 1538;     // per 1 Ether
  > |    uint public constant ICO_PRICE5 = 1250;     // per 1 Ether
    |    uint public constant ICO_PRICE6 = 1000;     // per 1 Ether
    |    uint public constant ICO_PRICE7 = 800;     // per 1 Ether
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public constant ICO_PRICE4 = 1538;     // per 1 Ether
    |    uint public constant ICO_PRICE5 = 1250;     // per 1 Ether
  > |    uint public constant ICO_PRICE6 = 1000;     // per 1 Ether
    |    uint public constant ICO_PRICE7 = 800;     // per 1 Ether
    |    uint public constant ICO_PRICE8 = 666;     // per 1 Ether
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public constant ICO_PRICE5 = 1250;     // per 1 Ether
    |    uint public constant ICO_PRICE6 = 1000;     // per 1 Ether
  > |    uint public constant ICO_PRICE7 = 800;     // per 1 Ether
    |    uint public constant ICO_PRICE8 = 666;     // per 1 Ether
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    uint public constant ICO_PRICE6 = 1000;     // per 1 Ether
    |    uint public constant ICO_PRICE7 = 800;     // per 1 Ether
  > |    uint public constant ICO_PRICE8 = 666;     // per 1 Ether
    |
    |    enum State{
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    State public currentState = State.Init;
    |    bool public enableTransfers = true;
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    State public currentState = State.Init;
  > |    bool public enableTransfers = true;
    |
    |    // Token manager has exclusive priveleges to call administrative
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    // Token manager has exclusive priveleges to call administrative
    |    // functions on this contract.
  > |    address public tokenManagerAddress = 0;
    |
    |    // Gathered funds can be withdrawn only to escrow's address.
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    // Gathered funds can be withdrawn only to escrow's address.
  > |    address public escrowAddress = 0;
    |
    |    // Team bonus address
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    // Team bonus address
  > |    address public teamAddress = 0;
    |
    |    // Development holder address
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    // Development holder address
  > |    address public developmentAddress = 0;
    |
    |    // Eco system holder address
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    // Eco system holder address
  > |    address public ecoSystemAddress = 0;
    |
    |    // Contract holder address
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    // Contract holder address
  > |    address public contractHolderAddress = 0;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |
  > |    uint public icoSoldTokens = 0;
    |    uint public totalSoldTokens = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |    uint public icoSoldTokens = 0;
  > |    uint public totalSoldTokens = 0;
    |
    |    /// Modifiers:
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function buyTokens() public payable returns (uint256)
    |    {
    |        require(msg.value >= ((1 ether / 1 wei) / 100));
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function getPrice() public constant returns (uint)
    |    {
    |        if (icoSoldTokens < (4100000 * (1 ether / 1 wei))) {
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function setState(State _nextState) public onlytokenManagerAddress
    |    {
    |        //setState() method call shouldn't be entertained after ICOFinished
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function DisableTransfer() public onlytokenManagerAddress
    |    {
    |        enableTransfers = false;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(270)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |
    |
  > |    function EnableTransfer() public onlytokenManagerAddress
    |    {
    |        enableTransfers = true;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'EvoNineToken':
    |    }
    |
  > |    function withdrawEther() public onlytokenManagerAddress
    |    {
    |        if (this.balance > 0)
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(281)

[31mViolation[0m for TODAmount in contract 'EvoNineToken':
    |        if (this.balance > 0)
    |        {
  > |            escrowAddress.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(285)

[31mViolation[0m for TODReceiver in contract 'EvoNineToken':
    |        if (this.balance > 0)
    |        {
  > |            escrowAddress.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(285)

[33mWarning[0m for UnhandledException in contract 'EvoNineToken':
    |        if (this.balance > 0)
    |        {
  > |            escrowAddress.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EvoNineToken':
    |        if (this.balance > 0)
    |        {
  > |            escrowAddress.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(285)

[31mViolation[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |        require(balances[_to] + _value > balances[_to]);
    |
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |        require(balances[_to] + _value > balances[_to]);
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |        uint newTokens = msg.value * getPrice();
    |        balances[msg.sender] += newTokens;
  > |        supply += newTokens;
    |        icoSoldTokens += newTokens;
    |        totalSoldTokens += newTokens;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |        balances[msg.sender] += newTokens;
    |        supply += newTokens;
  > |        icoSoldTokens += newTokens;
    |        totalSoldTokens += newTokens;
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |        supply += newTokens;
    |        icoSoldTokens += newTokens;
  > |        totalSoldTokens += newTokens;
    |
    |        LogBuy(msg.sender, newTokens);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |        require(msg.value >= ((1 ether / 1 wei) / 100));
    |        uint newTokens = msg.value * getPrice();
  > |        balances[msg.sender] += newTokens;
    |        supply += newTokens;
    |        icoSoldTokens += newTokens;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |        require(currentState != State.ICOFinished);
    |
  > |        currentState = _nextState;
    |        // enable/disable transfers
    |        //enable transfers only after ICOFinished, disable otherwise
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |    function DisableTransfer() public onlytokenManagerAddress
    |    {
  > |        enableTransfers = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |    function EnableTransfer() public onlytokenManagerAddress
    |    {
  > |        enableTransfers = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |    function ChangetokenManagerAddress(address _mgr) public onlytokenManagerAddress
    |    {
  > |        tokenManagerAddress = _mgr;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'EvoNineToken':
    |    function ChangeCrowner(address _mgr) public onlyTokenCrowner
    |    {
  > |        escrowAddress = _mgr;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(314)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |// SafeMath
  > |contract SafeMath {
    |    function safeMul(uint a, uint b) internal pure returns (uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(4)

[33mWarning[0m for LockedEther in contract 'StdToken':
    |}
    |//StdToken
  > |contract StdToken is Token {
    |    // Fields:
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'StdToken':
    |
    |    // Functions:
  > |    function transferTo(address _to, uint256 _value) public returns (bool) {
    |        require(balances[msg.sender] >= _value);
    |        require(balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'StdToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool){
    |        require(balances[_from] >= _value);
    |        require(allowed[_from][msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'StdToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'StdToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'StdToken':
    |    }
    |
  > |    function safeSub(uint a, uint b) internal pure returns (uint) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'StdToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) internal pure returns (uint) {
    |        uint c = a + b;
    |        assert(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'StdToken':
    |    mapping(address => uint256) balances;
    |    mapping(address => mapping(address => uint256)) allowed;
  > |    uint public supply = 0;
    |
    |    // Functions:
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'StdToken':
    |    }
    |
  > |    function totalSupply() public constant returns (uint256) {
    |        return supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'StdToken':
    |        require(balances[_to] + _value > balances[_to]);
    |
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'StdToken':
    |
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'StdToken':
    |        require(balances[_to] + _value > balances[_to]);
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'StdToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'StdToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'StdToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x975e718da88b619738fbc548a258d1639498d32e.sol(109)


