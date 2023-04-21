Processing contract: /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol:Control
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol:Share
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol:ShareErc20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Control':
    |}
    |
  > |contract Control {
    |    bool public pause;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'Control':
    |    }
    |
  > |    function setPause(bool _pause) public onlyOwner {
    |        pause = _pause;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Control':
    |
    |contract Control {
  > |    bool public pause;
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Control':
    |contract Control {
    |    bool public pause;
  > |    address public owner;
    |
    |    event Pause(bool pause);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Control':
    |
    |    function setPause(bool _pause) public onlyOwner {
  > |        pause = _pause;
    |
    |        emit Pause(_pause);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(35)

[33mWarning[0m for DAO in contract 'Share':
    |
    |            if ((msg.value - split * totalSupply) > 0) {
  > |                h.onIncome.value(msg.value - split * totalSupply)();
    |            }
    |            emit Income(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(72)

[33mWarning[0m for DAOConstantGas in contract 'Share':
    |        uint256 value = revenue();
    |        fullfilled[msg.sender] = watermark;
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(92)

[33mWarning[0m for DAOConstantGas in contract 'Share':
    |
    |        //for from, withdraw the revenue on the amount of token transferd
  > |        from.transfer(fromBonus);
    |
    |        emit Transfer(from, to, amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(114)

[33mWarning[0m for DAOConstantGas in contract 'Share':
    |        _transfer(from, msg.sender, amount);
    |
  > |        from.transfer(msg.value);
    |        
    |        emit Buy(from, msg.sender, amount, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(144)

[33mWarning[0m for LockedEther in contract 'Share':
    |}
    |
  > |contract Share is Control {
    |    uint256 public totalSupply;
    |    uint256 public watermark;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'Share':
    |    }
    |
  > |    function setPause(bool _pause) public onlyOwner {
    |        pause = _pause;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'Share':
    |    Share public h;
    |
  > |    mapping (address => uint256) public balances;
    |    mapping (address => uint256) public fullfilled;
    |    mapping (address => uint256) public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'Share':
    |
    |    mapping (address => uint256) public balances;
  > |    mapping (address => uint256) public fullfilled;
    |    mapping (address => uint256) public sellPrice;
    |    mapping (address => uint256) public toSell;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Share':
    |    mapping (address => uint256) public balances;
    |    mapping (address => uint256) public fullfilled;
  > |    mapping (address => uint256) public sellPrice;
    |    mapping (address => uint256) public toSell;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'Share':
    |    mapping (address => uint256) public fullfilled;
    |    mapping (address => uint256) public sellPrice;
  > |    mapping (address => uint256) public toSell;
    |
    |    event Transfer(address from, address to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Share':
    |    }
    |
  > |    function sell(uint256 price, uint256 amount) public {
    |        sellPrice[msg.sender] = price;
    |        toSell[msg.sender] = amount;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'Share':
    |    }
    |
  > |    function buy(address from) public payable notPause {
    |        require(sellPrice[from] > 0);
    |        uint256 amount = msg.value / sellPrice[from];
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'Share':
    |
    |contract Control {
  > |    bool public pause;
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Share':
    |contract Control {
    |    bool public pause;
  > |    address public owner;
    |
    |    event Pause(bool pause);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Share':
    |
    |contract Share is Control {
  > |    uint256 public totalSupply;
    |    uint256 public watermark;
    |    Share public h;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Share':
    |contract Share is Control {
    |    uint256 public totalSupply;
  > |    uint256 public watermark;
    |    Share public h;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Share':
    |    uint256 public totalSupply;
    |    uint256 public watermark;
  > |    Share public h;
    |
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Share':
    |    }
    |
  > |    function onIncome() public payable notPause {
    |        if (msg.value > 0) {
    |            uint256 split = (msg.value / totalSupply);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Share':
    |    }
    |
  > |    function revenue() public view returns (uint256) {
    |        return (watermark - fullfilled[msg.sender]) * balances[msg.sender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Share':
    |    }
    |
  > |    function withdraw() public notPause {
    |        if(balances[msg.sender] == 0) {
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Share':
    |    }
    |
  > |    function _transfer(address from, address to, uint256 amount) internal {
    |        // prevent overflow
    |        require(amount > 0);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(97)

[31mViolation[0m for TODAmount in contract 'Share':
    |        uint256 value = revenue();
    |        fullfilled[msg.sender] = watermark;
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(92)

[31mViolation[0m for TODAmount in contract 'Share':
    |
    |        //for from, withdraw the revenue on the amount of token transferd
  > |        from.transfer(fromBonus);
    |
    |        emit Transfer(from, to, amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(114)

[33mWarning[0m for TODReceiver in contract 'Share':
    |        uint256 value = revenue();
    |        fullfilled[msg.sender] = watermark;
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(92)

[33mWarning[0m for TODReceiver in contract 'Share':
    |
    |        //for from, withdraw the revenue on the amount of token transferd
  > |        from.transfer(fromBonus);
    |
    |        emit Transfer(from, to, amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(114)

[33mWarning[0m for TODReceiver in contract 'Share':
    |        _transfer(from, msg.sender, amount);
    |
  > |        from.transfer(msg.value);
    |        
    |        emit Buy(from, msg.sender, amount, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(144)

[33mWarning[0m for UnhandledException in contract 'Share':
    |
    |            if ((msg.value - split * totalSupply) > 0) {
  > |                h.onIncome.value(msg.value - split * totalSupply)();
    |            }
    |            emit Income(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(72)

[33mWarning[0m for UnhandledException in contract 'Share':
    |        uint256 value = revenue();
    |        fullfilled[msg.sender] = watermark;
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(92)

[33mWarning[0m for UnhandledException in contract 'Share':
    |
    |        //for from, withdraw the revenue on the amount of token transferd
  > |        from.transfer(fromBonus);
    |
    |        emit Transfer(from, to, amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(114)

[33mWarning[0m for UnhandledException in contract 'Share':
    |        _transfer(from, msg.sender, amount);
    |
  > |        from.transfer(msg.value);
    |        
    |        emit Buy(from, msg.sender, amount, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'Share':
    |        if (msg.value > 0) {
    |            uint256 split = (msg.value / totalSupply);
  > |            watermark += split;
    |            assert(watermark * totalSupply > watermark);
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'Share':
    |        uint256 toBonus = (watermark - fullfilled[to]) * balances[to];
    |
  > |        balances[from] -= amount;
    |        balances[to] += amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'Share':
    |
    |        balances[from] -= amount;
  > |        balances[to] += amount;
    |
    |        //for to, the revenue stays the same, but balance increases, so update the fullfilled
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'Share':
    |
    |        //for to, the revenue stays the same, but balance increases, so update the fullfilled
  > |        fullfilled[to] = (watermark * balances[to] - toBonus)/balances[to];
    |
    |        //for from, withdraw the revenue on the amount of token transferd
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'Share':
    |        require(amount > 0);
    |
  > |        toSell[from] -= amount;
    |        _transfer(from, msg.sender, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Share':
    |        }
    |        uint256 value = revenue();
  > |        fullfilled[msg.sender] = watermark;
    |        msg.sender.transfer(value);
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Share':
    |
    |        balances[from] -= amount;
  > |        balances[to] += amount;
    |
    |        //for to, the revenue stays the same, but balance increases, so update the fullfilled
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Share':
    |
    |        //for to, the revenue stays the same, but balance increases, so update the fullfilled
  > |        fullfilled[to] = (watermark * balances[to] - toBonus)/balances[to];
    |
    |        //for from, withdraw the revenue on the amount of token transferd
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Share':
    |
    |    function sell(uint256 price, uint256 amount) public {
  > |        sellPrice[msg.sender] = price;
    |        toSell[msg.sender] = amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Share':
    |    function sell(uint256 price, uint256 amount) public {
    |        sellPrice[msg.sender] = price;
  > |        toSell[msg.sender] = amount;
    |
    |        emit Sell(msg.sender, price, amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Share':
    |
    |    function setPause(bool _pause) public onlyOwner {
  > |        pause = _pause;
    |
    |        emit Pause(_pause);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(35)

[33mWarning[0m for DAO in contract 'ShareErc20':
    |
    |            if ((msg.value - split * totalSupply) > 0) {
  > |                h.onIncome.value(msg.value - split * totalSupply)();
    |            }
    |            emit Income(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(72)

[33mWarning[0m for DAOConstantGas in contract 'ShareErc20':
    |        uint256 value = revenue();
    |        fullfilled[msg.sender] = watermark;
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(92)

[33mWarning[0m for DAOConstantGas in contract 'ShareErc20':
    |
    |        //for from, withdraw the revenue on the amount of token transferd
  > |        from.transfer(fromBonus);
    |
    |        emit Transfer(from, to, amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(114)

[33mWarning[0m for DAOConstantGas in contract 'ShareErc20':
    |        _transfer(from, msg.sender, amount);
    |
  > |        from.transfer(msg.value);
    |        
    |        emit Buy(from, msg.sender, amount, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(144)

[33mWarning[0m for LockedEther in contract 'ShareErc20':
    | * user can buy holds from shareholders at his will
    | */
  > |contract ShareErc20 is Share, ERC20Interface {
    |    string public symbol;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(154)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function setPause(bool _pause) public onlyOwner {
    |        pause = _pause;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    Share public h;
    |
  > |    mapping (address => uint256) public balances;
    |    mapping (address => uint256) public fullfilled;
    |    mapping (address => uint256) public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |
    |    mapping (address => uint256) public balances;
  > |    mapping (address => uint256) public fullfilled;
    |    mapping (address => uint256) public sellPrice;
    |    mapping (address => uint256) public toSell;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    mapping (address => uint256) public balances;
    |    mapping (address => uint256) public fullfilled;
  > |    mapping (address => uint256) public sellPrice;
    |    mapping (address => uint256) public toSell;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    mapping (address => uint256) public fullfilled;
    |    mapping (address => uint256) public sellPrice;
  > |    mapping (address => uint256) public toSell;
    |
    |    event Transfer(address from, address to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function sell(uint256 price, uint256 amount) public {
    |        sellPrice[msg.sender] = price;
    |        toSell[msg.sender] = amount;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function buy(address from) public payable notPause {
    |        require(sellPrice[from] > 0);
    |        uint256 amount = msg.value / sellPrice[from];
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    uint256 public decimals;
    |
  > |    mapping (address => mapping(address => uint256)) public allowance;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function balanceOf(address addr) public constant returns(uint256) {
    |        return balances[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(172)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function transfer(address to, uint amount) public returns(bool) {
    |        _transfer(msg.sender, to, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function approve(address to, uint256 amount) public returns(bool){
    |        allowance[msg.sender][to] = amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function transferFrom(address from, address to, uint256 amount) public returns(bool) {
    |        require(allowance[from][msg.sender] >= amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |
    |contract Control {
  > |    bool public pause;
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |contract Control {
    |    bool public pause;
  > |    address public owner;
    |
    |    event Pause(bool pause);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |
    |contract Share is Control {
  > |    uint256 public totalSupply;
    |    uint256 public watermark;
    |    Share public h;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |contract Share is Control {
    |    uint256 public totalSupply;
  > |    uint256 public watermark;
    |    Share public h;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |    uint256 public totalSupply;
    |    uint256 public watermark;
  > |    Share public h;
    |
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function onIncome() public payable notPause {
    |        if (msg.value > 0) {
    |            uint256 split = (msg.value / totalSupply);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function revenue() public view returns (uint256) {
    |        return (watermark - fullfilled[msg.sender]) * balances[msg.sender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function withdraw() public notPause {
    |        if(balances[msg.sender] == 0) {
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |    }
    |
  > |    function _transfer(address from, address to, uint256 amount) internal {
    |        // prevent overflow
    |        require(amount > 0);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    | */
    |contract ShareErc20 is Share, ERC20Interface {
  > |    string public symbol;
    |    string public name;
    |    uint256 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |contract ShareErc20 is Share, ERC20Interface {
    |    string public symbol;
  > |    string public name;
    |    uint256 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'ShareErc20':
    |    string public symbol;
    |    string public name;
  > |    uint256 public decimals;
    |
    |    mapping (address => mapping(address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(157)

[31mViolation[0m for TODAmount in contract 'ShareErc20':
    |        uint256 value = revenue();
    |        fullfilled[msg.sender] = watermark;
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(92)

[33mWarning[0m for TODReceiver in contract 'ShareErc20':
    |        uint256 value = revenue();
    |        fullfilled[msg.sender] = watermark;
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(92)

[33mWarning[0m for UnhandledException in contract 'ShareErc20':
    |
    |            if ((msg.value - split * totalSupply) > 0) {
  > |                h.onIncome.value(msg.value - split * totalSupply)();
    |            }
    |            emit Income(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(72)

[33mWarning[0m for UnhandledException in contract 'ShareErc20':
    |        uint256 value = revenue();
    |        fullfilled[msg.sender] = watermark;
  > |        msg.sender.transfer(value);
    |
    |        emit Withdraw(msg.sender, value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(92)

[33mWarning[0m for UnhandledException in contract 'ShareErc20':
    |
    |        //for from, withdraw the revenue on the amount of token transferd
  > |        from.transfer(fromBonus);
    |
    |        emit Transfer(from, to, amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(114)

[33mWarning[0m for UnhandledException in contract 'ShareErc20':
    |        _transfer(from, msg.sender, amount);
    |
  > |        from.transfer(msg.value);
    |        
    |        emit Buy(from, msg.sender, amount, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'ShareErc20':
    |        if (msg.value > 0) {
    |            uint256 split = (msg.value / totalSupply);
  > |            watermark += split;
    |            assert(watermark * totalSupply > watermark);
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'ShareErc20':
    |        uint256 toBonus = (watermark - fullfilled[to]) * balances[to];
    |
  > |        balances[from] -= amount;
    |        balances[to] += amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'ShareErc20':
    |
    |        balances[from] -= amount;
  > |        balances[to] += amount;
    |
    |        //for to, the revenue stays the same, but balance increases, so update the fullfilled
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'ShareErc20':
    |
    |        //for to, the revenue stays the same, but balance increases, so update the fullfilled
  > |        fullfilled[to] = (watermark * balances[to] - toBonus)/balances[to];
    |
    |        //for from, withdraw the revenue on the amount of token transferd
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'ShareErc20':
    |        require(amount > 0);
    |
  > |        toSell[from] -= amount;
    |        _transfer(from, msg.sender, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ShareErc20':
    |        }
    |        uint256 value = revenue();
  > |        fullfilled[msg.sender] = watermark;
    |        msg.sender.transfer(value);
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'ShareErc20':
    |        uint256 toBonus = (watermark - fullfilled[to]) * balances[to];
    |
  > |        balances[from] -= amount;
    |        balances[to] += amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'ShareErc20':
    |
    |        balances[from] -= amount;
  > |        balances[to] += amount;
    |
    |        //for to, the revenue stays the same, but balance increases, so update the fullfilled
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'ShareErc20':
    |
    |    function sell(uint256 price, uint256 amount) public {
  > |        sellPrice[msg.sender] = price;
    |        toSell[msg.sender] = amount;
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'ShareErc20':
    |    function sell(uint256 price, uint256 amount) public {
    |        sellPrice[msg.sender] = price;
  > |        toSell[msg.sender] = amount;
    |
    |        emit Sell(msg.sender, price, amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'ShareErc20':
    |
    |    function approve(address to, uint256 amount) public returns(bool){
  > |        allowance[msg.sender][to] = amount;
    |
    |        emit Approval(msg.sender, to, amount);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ShareErc20':
    |        require(allowance[from][msg.sender] >= amount);
    |
  > |        allowance[from][msg.sender] -= amount;
    |        _transfer(from, to, amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'ShareErc20':
    |
    |    function setPause(bool _pause) public onlyOwner {
  > |        pause = _pause;
    |
    |        emit Pause(_pause);
  at /home/jiaming/mavs_srcs/contract@0x4cf7b3e02c55dc954fd9e693baf396a66efbafa3.sol(35)


