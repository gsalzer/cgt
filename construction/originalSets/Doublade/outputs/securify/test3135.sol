Processing contract: /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol:GEE
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'GEE':
    |    function withdrawDevFees() public {
    |        require(_payFees);
  > |        _devFeesAddr.transfer(_devFees);
    |        _devFees = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(178)

[33mWarning[0m for DAOConstantGas in contract 'GEE':
    |
    |        // send the dev fees
  > |        if(_payFees) _devFeesAddr.transfer(_devFees);
    |
    |        // check balance before transferring
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(120)

[33mWarning[0m for DAOConstantGas in contract 'GEE':
    |        // check balance before transferring
    |        require(valueAsEth <= this.balance);
  > |        _receiver.transfer(valueAsEth);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(124)

[33mWarning[0m for LockedEther in contract 'GEE':
  > |contract GEE {
    |
    |    string public name = "Green Earth Economy Token";
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'GEE':
    |    event Transfer(address indexed _from, address indexed _to, uint _value);
    |    // Storage
  > |    mapping (address => uint256) public balances;
    |
    |    function GEE() {
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function safeWithdrawal(address _receiver, uint256 _value) public {
    |        require((msg.sender == _owner));
    |        uint256 valueAsEth = mul(_value,1 ether);
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function balanceOf(address _receiver) public constant returns (uint balance) {
    |        return balances[_receiver];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function changeOwner(address _receiver) public {
    |        require(msg.sender == _dev);
    |        _dev = _receiver;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function changeDev(address _receiver) public {
    |        require(msg.sender == _owner);
    |        _owner = _receiver;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function changeDevFeesAddr(address _receiver) public {
    |        require(msg.sender == _dev);
    |        _devFeesAddr = _receiver;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function changeAgent(address _receiver) public {
    |        require(msg.sender == _agent);
    |        _agent = _receiver;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |contract GEE {
    |
  > |    string public name = "Green Earth Economy Token";
    |    uint8 public decimals = 18;
    |    string public symbol = "GEE";
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |
    |    string public name = "Green Earth Economy Token";
  > |    uint8 public decimals = 18;
    |    string public symbol = "GEE";
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    string public name = "Green Earth Economy Token";
    |    uint8 public decimals = 18;
  > |    string public symbol = "GEE";
    |
    |    address public _owner = 0xb9a2Dd4453dE3f4cF1983f6F6f2521a2BA40E4c8;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    string public symbol = "GEE";
    |
  > |    address public _owner = 0xb9a2Dd4453dE3f4cF1983f6F6f2521a2BA40E4c8;
    |    address public _agent = 0xff23a447fD49966043342AbD692F9193f2399f79;
    |    address public _dev = 0xC96CfB18C39DC02FBa229B6EA698b1AD5576DF4c;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |
    |    address public _owner = 0xb9a2Dd4453dE3f4cF1983f6F6f2521a2BA40E4c8;
  > |    address public _agent = 0xff23a447fD49966043342AbD692F9193f2399f79;
    |    address public _dev = 0xC96CfB18C39DC02FBa229B6EA698b1AD5576DF4c;
    |    address public _devFeesAddr = 0x0f521BE3Cd38eb6AA546F8305ee65B62d3018032;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    address public _owner = 0xb9a2Dd4453dE3f4cF1983f6F6f2521a2BA40E4c8;
    |    address public _agent = 0xff23a447fD49966043342AbD692F9193f2399f79;
  > |    address public _dev = 0xC96CfB18C39DC02FBa229B6EA698b1AD5576DF4c;
    |    address public _devFeesAddr = 0x0f521BE3Cd38eb6AA546F8305ee65B62d3018032;
    |    uint256 public _tokePerEth = 275;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    address public _agent = 0xff23a447fD49966043342AbD692F9193f2399f79;
    |    address public _dev = 0xC96CfB18C39DC02FBa229B6EA698b1AD5576DF4c;
  > |    address public _devFeesAddr = 0x0f521BE3Cd38eb6AA546F8305ee65B62d3018032;
    |    uint256 public _tokePerEth = 275;
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    address public _dev = 0xC96CfB18C39DC02FBa229B6EA698b1AD5576DF4c;
    |    address public _devFeesAddr = 0x0f521BE3Cd38eb6AA546F8305ee65B62d3018032;
  > |    uint256 public _tokePerEth = 275;
    |
    |    bool _payFees = false;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    uint256 _devFees = 0;
    |
  > |    uint256 public weiAmount;
    |    uint256 incomingValueAsEth;
    |    uint256 _calcToken;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    uint256 _tokePerWei;
    |
  > |    uint256 public _totalSupply = 21000000 * 1 ether;
    |    event Transfer(address indexed _from, address indexed _to, uint _value);
    |    // Storage
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function preMine() {
    |        // premine 4m to owner, 1m to dev, 1m to agent
    |        balances[_owner] = 2000000 * 1 ether;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function totalSupply() public constant returns (uint256) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function getBalance() public constant returns (uint256) {
    |        return this.balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |        return this.balance;
    |    }
  > |    function getLifeVal() public returns (uint256) {
    |        require((msg.sender == _owner) || (msg.sender == _dev));
    |        return _lifeVal;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |
    |    // enables fee update - must be between 0 and 20 (%)
  > |    function updateFeeAmount(uint _newFee) public {
    |        require((msg.sender == _dev) || (msg.sender == _owner));
    |        require((_newFee >= 0) && (_newFee <= 20));
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function withdrawDevFees() public {
    |        require(_payFees);
    |        _devFeesAddr.transfer(_devFees);
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function mul(uint a, uint b) internal pure returns (uint) {
    |        uint c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function div(uint a, uint b) internal pure returns (uint) {
    |        // assert(b > 0); // Solidity automatically throws when dividing by 0
    |        uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function sub(uint a, uint b) internal pure returns (uint) {
    |        require(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'GEE':
    |    }
    |
  > |    function add(uint a, uint b) internal pure returns (uint) {
    |        uint c = a + b;
    |        require(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(200)

[31mViolation[0m for TODAmount in contract 'GEE':
    |
    |        // send the dev fees
  > |        if(_payFees) _devFeesAddr.transfer(_devFees);
    |
    |        // check balance before transferring
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(120)

[31mViolation[0m for TODAmount in contract 'GEE':
    |    function withdrawDevFees() public {
    |        require(_payFees);
  > |        _devFeesAddr.transfer(_devFees);
    |        _devFees = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(178)

[33mWarning[0m for TODAmount in contract 'GEE':
    |        // check balance before transferring
    |        require(valueAsEth <= this.balance);
  > |        _receiver.transfer(valueAsEth);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(124)

[31mViolation[0m for TODReceiver in contract 'GEE':
    |
    |        // send the dev fees
  > |        if(_payFees) _devFeesAddr.transfer(_devFees);
    |
    |        // check balance before transferring
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(120)

[31mViolation[0m for TODReceiver in contract 'GEE':
    |    function withdrawDevFees() public {
    |        require(_payFees);
  > |        _devFeesAddr.transfer(_devFees);
    |        _devFees = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(178)

[33mWarning[0m for TODReceiver in contract 'GEE':
    |        // check balance before transferring
    |        require(valueAsEth <= this.balance);
  > |        _receiver.transfer(valueAsEth);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(124)

[33mWarning[0m for UnhandledException in contract 'GEE':
    |
    |        // send the dev fees
  > |        if(_payFees) _devFeesAddr.transfer(_devFees);
    |
    |        // check balance before transferring
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(120)

[33mWarning[0m for UnhandledException in contract 'GEE':
    |        // check balance before transferring
    |        require(valueAsEth <= this.balance);
  > |        _receiver.transfer(valueAsEth);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(124)

[33mWarning[0m for UnhandledException in contract 'GEE':
    |    function withdrawDevFees() public {
    |        require(_payFees);
  > |        _devFeesAddr.transfer(_devFees);
    |        _devFees = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GEE':
    |
    |        // send the dev fees
  > |        if(_payFees) _devFeesAddr.transfer(_devFees);
    |
    |        // check balance before transferring
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GEE':
    |        // check balance before transferring
    |        require(valueAsEth <= this.balance);
  > |        _receiver.transfer(valueAsEth);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'GEE':
    |    function preMine() {
    |        // premine 4m to owner, 1m to dev, 1m to agent
  > |        balances[_owner] = 2000000 * 1 ether;
    |        Transfer(this, _owner, balances[_owner]);
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'GEE':
    |        Transfer(this, _owner, balances[_owner]);
    |
  > |        balances[_dev] = 1000000 * 1 ether;
    |        Transfer(this, _dev, balances[_dev]);
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'GEE':
    |        Transfer(this, _dev, balances[_dev]);
    |
  > |        balances[_agent] = 1000000 * 1 ether;
    |        Transfer(this, _agent, balances[_agent]);
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'GEE':
    |
    |        // reduce _totalSupply
  > |        _totalSupply = sub(_totalSupply, (4000000 * 1 ether));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'GEE':
    |    function updateTokenBalance(uint256 newBalance) public {
    |        require(msg.sender == _owner);
  > |        _totalSupply = add(_totalSupply,newBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'GEE':
    |        require(_payFees);
    |        _devFeesAddr.transfer(_devFees);
  > |        _devFees = 0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'GEE':
    |        require(codeLength == 0);
    |
  > |        balances[msg.sender] = sub(balanceOf(msg.sender), _value);
    |        balances[_to] = add(balances[_to], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'GEE':
    |        require(codeLength == 0);
    |
  > |        balances[msg.sender] = sub(balanceOf(msg.sender), _value);
    |        balances[_to] = add(balances[_to], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'GEE':
    |    function changePayRate(uint256 _newRate) public {
    |        require(((msg.sender == _owner) || (msg.sender == _dev)) && (_newRate >= 0));
  > |        _tokePerEth = _newRate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'GEE':
    |    function changeOwner(address _receiver) public {
    |        require(msg.sender == _dev);
  > |        _dev = _receiver;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'GEE':
    |    function changeDev(address _receiver) public {
    |        require(msg.sender == _owner);
  > |        _owner = _receiver;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'GEE':
    |    function changeDevFeesAddr(address _receiver) public {
    |        require(msg.sender == _dev);
  > |        _devFeesAddr = _receiver;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'GEE':
    |    function changeAgent(address _receiver) public {
    |        require(msg.sender == _agent);
  > |        _agent = _receiver;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'GEE':
    |        require((msg.sender == _dev) || (msg.sender == _owner));
    |        require((_newFee >= 0) && (_newFee <= 20));
  > |        _fees = _newFee * 100;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcd582662a13d89eb9a8a458e452ae691be379c14.sol(173)


