Processing contract: /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol:BasicAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol:DragonTreasureToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol:PaymentInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol:TokenRecipient
[33mWarning[0m for LockedEther in contract 'BasicAccessControl':
    |
    |
  > |contract BasicAccessControl {
    |    address public owner;
    |    // address[] public moderators;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    // address[] public moderators;
    |    uint16 public totalModerators = 0;
  > |    mapping (address => bool) public moderators;
    |    bool public isMaintaining = true;
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'BasicAccessControl':
    |
    |
  > |    function AddModerator(address _newModerator) onlyOwner public {
    |        if (moderators[_newModerator] == false) {
    |            moderators[_newModerator] = true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    }
    |
  > |    function RemoveModerator(address _oldModerator) onlyOwner public {
    |        if (moderators[_oldModerator] == true) {
    |            moderators[_oldModerator] = false;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    }
    |
  > |    function UpdateMaintaining(bool _isMaintaining) onlyOwner public {
    |        isMaintaining = _isMaintaining;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'BasicAccessControl':
    |
    |contract BasicAccessControl {
  > |    address public owner;
    |    // address[] public moderators;
    |    uint16 public totalModerators = 0;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    address public owner;
    |    // address[] public moderators;
  > |    uint16 public totalModerators = 0;
    |    mapping (address => bool) public moderators;
    |    bool public isMaintaining = true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    uint16 public totalModerators = 0;
    |    mapping (address => bool) public moderators;
  > |    bool public isMaintaining = true;
    |
    |    function BasicAccessControl() public {
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    }
    |
  > |    function ChangeOwner(address _newOwner) onlyOwner public {
    |        if (_newOwner != address(0)) {
    |            owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |    function ChangeOwner(address _newOwner) onlyOwner public {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |    function AddModerator(address _newModerator) onlyOwner public {
    |        if (moderators[_newModerator] == false) {
  > |            moderators[_newModerator] = true;
    |            totalModerators += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |        if (moderators[_newModerator] == false) {
    |            moderators[_newModerator] = true;
  > |            totalModerators += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |    function RemoveModerator(address _oldModerator) onlyOwner public {
    |        if (moderators[_oldModerator] == true) {
  > |            moderators[_oldModerator] = false;
    |            totalModerators -= 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |        if (moderators[_oldModerator] == true) {
    |            moderators[_oldModerator] = false;
  > |            totalModerators -= 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |
    |    function UpdateMaintaining(bool _isMaintaining) onlyOwner public {
  > |        isMaintaining = _isMaintaining;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(52)

[33mWarning[0m for DAOConstantGas in contract 'DragonTreasureToken':
    |            revert();
    |        }
  > |        _sendTo.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(187)

[33mWarning[0m for DAOConstantGas in contract 'DragonTreasureToken':
    |        require(this.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(214)

[33mWarning[0m for LockedEther in contract 'DragonTreasureToken':
    |}
    |
  > |contract DragonTreasureToken is BasicAccessControl, TokenERC20 {
    |    // metadata
    |    string public constant name = "DragonTreasureToken";
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    // address[] public moderators;
    |    uint16 public totalModerators = 0;
  > |    mapping (address => bool) public moderators;
    |    bool public isMaintaining = true;
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |
    |
  > |    function AddModerator(address _newModerator) onlyOwner public {
    |        if (moderators[_newModerator] == false) {
    |            moderators[_newModerator] = true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function RemoveModerator(address _oldModerator) onlyOwner public {
    |        if (moderators[_oldModerator] == true) {
    |            moderators[_oldModerator] = false;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function UpdateMaintaining(bool _isMaintaining) onlyOwner public {
    |        isMaintaining = _isMaintaining;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    uint256 public buyPrice;
    |    bool public trading = false;
  > |    mapping (address => bool) public frozenAccount;
    |    event FrozenFunds(address target, bool frozen);
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |
    |    // moderators
  > |    function setAddress(address _inGameRewardAddress, address _userGrowPoolAddress, address _developerAddress, address _paymentContract) onlyModerators external {
    |        inGameRewardAddress = _inGameRewardAddress;
    |        userGrowPoolAddress = _userGrowPoolAddress;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |
    |    // public
  > |    function withdrawEther(address _sendTo, uint _amount) onlyModerators external {
    |        if (_amount > this.balance) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(183)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function freezeAccount(address _target, bool _freeze) onlyOwner public {
    |        frozenAccount[_target] = _freeze;
    |        FrozenFunds(_target, _freeze);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function buyBlueStarEgg(uint _tokens, uint16 _amount) isActive requirePaymentContract external {
    |        if (_tokens > balanceOf[msg.sender])
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |
    |contract BasicAccessControl {
  > |    address public owner;
    |    // address[] public moderators;
    |    uint16 public totalModerators = 0;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    address public owner;
    |    // address[] public moderators;
  > |    uint16 public totalModerators = 0;
    |    mapping (address => bool) public moderators;
    |    bool public isMaintaining = true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    uint16 public totalModerators = 0;
    |    mapping (address => bool) public moderators;
  > |    bool public isMaintaining = true;
    |
    |    function BasicAccessControl() public {
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function ChangeOwner(address _newOwner) onlyOwner public {
    |        if (_newOwner != address(0)) {
    |            owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |
    |contract TokenERC20 {
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |contract DragonTreasureToken is BasicAccessControl, TokenERC20 {
    |    // metadata
  > |    string public constant name = "DragonTreasureToken";
    |    string public constant symbol = "DTT";
    |    uint256 public constant decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    // metadata
    |    string public constant name = "DragonTreasureToken";
  > |    string public constant symbol = "DTT";
    |    uint256 public constant decimals = 8;
    |    string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    string public constant name = "DragonTreasureToken";
    |    string public constant symbol = "DTT";
  > |    uint256 public constant decimals = 8;
    |    string public version = "1.0";
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    string public constant symbol = "DTT";
    |    uint256 public constant decimals = 8;
  > |    string public version = "1.0";
    |
    |    // deposit address
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |
    |    // deposit address
  > |    address public inGameRewardAddress;
    |    address public userGrowPoolAddress;
    |    address public developerAddress;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    // deposit address
    |    address public inGameRewardAddress;
  > |    address public userGrowPoolAddress;
    |    address public developerAddress;
    |    address public paymentContract;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    address public inGameRewardAddress;
    |    address public userGrowPoolAddress;
  > |    address public developerAddress;
    |    address public paymentContract;
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    address public userGrowPoolAddress;
    |    address public developerAddress;
  > |    address public paymentContract;
    |
    |    // for future feature
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |
    |    // for future feature
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |    bool public trading = false;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    // for future feature
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |    bool public trading = false;
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    uint256 public sellPrice;
    |    uint256 public buyPrice;
  > |    bool public trading = false;
    |    mapping (address => bool) public frozenAccount;
    |    event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);
    |        require (balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'DragonTreasureToken':
    |    }
    |
  > |    function buy() payable isTrading public {
    |        uint amount = msg.value / buyPrice;
    |        _transfer(this, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(206)

[33mWarning[0m for TODAmount in contract 'DragonTreasureToken':
    |            revert();
    |        }
  > |        _sendTo.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(187)

[33mWarning[0m for TODAmount in contract 'DragonTreasureToken':
    |        require(this.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(214)

[33mWarning[0m for TODReceiver in contract 'DragonTreasureToken':
    |            revert();
    |        }
  > |        _sendTo.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(187)

[33mWarning[0m for TODReceiver in contract 'DragonTreasureToken':
    |        require(this.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(214)

[33mWarning[0m for UnhandledException in contract 'DragonTreasureToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(99)

[33mWarning[0m for UnhandledException in contract 'DragonTreasureToken':
    |            revert();
    |        }
  > |        _sendTo.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(187)

[33mWarning[0m for UnhandledException in contract 'DragonTreasureToken':
    |        require(this.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(214)

[33mWarning[0m for UnhandledException in contract 'DragonTreasureToken':
    |            revert();
    |        PaymentInterface payment = PaymentInterface(paymentContract);
  > |        uint deductedTokens = payment.buyBlueStarEgg(msg.sender, _tokens, _amount);
    |        if (deductedTokens == 0 || deductedTokens > _tokens)
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DragonTreasureToken':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(99)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DragonTreasureToken':
    |            revert();
    |        PaymentInterface payment = PaymentInterface(paymentContract);
  > |        uint deductedTokens = payment.buyBlueStarEgg(msg.sender, _tokens, _amount);
    |        if (deductedTokens == 0 || deductedTokens > _tokens)
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DragonTreasureToken':
    |            revert();
    |        }
  > |        _sendTo.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        require(!frozenAccount[_to]);
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        require(!frozenAccount[_to]);
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |    function ChangeOwner(address _newOwner) onlyOwner public {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |    function AddModerator(address _newModerator) onlyOwner public {
    |        if (moderators[_newModerator] == false) {
  > |            moderators[_newModerator] = true;
    |            totalModerators += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        if (moderators[_newModerator] == false) {
    |            moderators[_newModerator] = true;
  > |            totalModerators += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |    function RemoveModerator(address _oldModerator) onlyOwner public {
    |        if (moderators[_oldModerator] == true) {
  > |            moderators[_oldModerator] = false;
    |            totalModerators -= 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        if (moderators[_oldModerator] == true) {
    |            moderators[_oldModerator] = false;
  > |            totalModerators -= 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |
    |    function UpdateMaintaining(bool _isMaintaining) onlyOwner public {
  > |        isMaintaining = _isMaintaining;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |    // moderators
    |    function setAddress(address _inGameRewardAddress, address _userGrowPoolAddress, address _developerAddress, address _paymentContract) onlyModerators external {
  > |        inGameRewardAddress = _inGameRewardAddress;
    |        userGrowPoolAddress = _userGrowPoolAddress;
    |        developerAddress = _developerAddress;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |    function setAddress(address _inGameRewardAddress, address _userGrowPoolAddress, address _developerAddress, address _paymentContract) onlyModerators external {
    |        inGameRewardAddress = _inGameRewardAddress;
  > |        userGrowPoolAddress = _userGrowPoolAddress;
    |        developerAddress = _developerAddress;
    |        paymentContract = _paymentContract;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        inGameRewardAddress = _inGameRewardAddress;
    |        userGrowPoolAddress = _userGrowPoolAddress;
  > |        developerAddress = _developerAddress;
    |        paymentContract = _paymentContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |        userGrowPoolAddress = _userGrowPoolAddress;
    |        developerAddress = _developerAddress;
  > |        paymentContract = _paymentContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'DragonTreasureToken':
    |
    |    function freezeAccount(address _target, bool _freeze) onlyOwner public {
  > |        frozenAccount[_target] = _freeze;
    |        FrozenFunds(_target, _freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(202)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |}
    |
  > |contract TokenERC20 {
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |contract TokenERC20 {
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    event Burn(address indexed from, uint256 value);
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(104)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(99)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        TokenRecipient spender = TokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x2118840b16aaf95a0f0027b7ac32f5986925d935.sol(116)


