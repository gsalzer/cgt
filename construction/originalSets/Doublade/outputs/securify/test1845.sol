Processing contract: /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol:BF
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol:BasicBF
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BF':
    |        require(_value <= balances[msg.sender]);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        msg.sender.transfer(_value);
    |        emit Withdraw(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(152)

[33mWarning[0m for DAOConstantGas in contract 'BF':
    |        require(_value <= balances[this]);
    |        balances[this] = balances[this].sub(_value);
  > |        msg.sender.transfer(_value);
    |        emit WithdrawOwner(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(160)

[33mWarning[0m for LockedEther in contract 'BF':
    |}
    |
  > |contract BF is BasicBF {
    |    constructor () public {}
    |    
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(118)

[33mWarning[0m for TODAmount in contract 'BF':
    |        require(_value <= balances[msg.sender]);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        msg.sender.transfer(_value);
    |        emit Withdraw(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(152)

[33mWarning[0m for TODAmount in contract 'BF':
    |        require(_value <= balances[this]);
    |        balances[this] = balances[this].sub(_value);
  > |        msg.sender.transfer(_value);
    |        emit WithdrawOwner(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(160)

[33mWarning[0m for TODReceiver in contract 'BF':
    |        require(_value <= balances[msg.sender]);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        msg.sender.transfer(_value);
    |        emit Withdraw(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(152)

[33mWarning[0m for TODReceiver in contract 'BF':
    |        require(_value <= balances[this]);
    |        balances[this] = balances[this].sub(_value);
  > |        msg.sender.transfer(_value);
    |        emit WithdrawOwner(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(160)

[33mWarning[0m for UnhandledException in contract 'BF':
    |        require(_value <= balances[msg.sender]);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        msg.sender.transfer(_value);
    |        emit Withdraw(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(152)

[33mWarning[0m for UnhandledException in contract 'BF':
    |        require(_value <= balances[this]);
    |        balances[this] = balances[this].sub(_value);
  > |        msg.sender.transfer(_value);
    |        emit WithdrawOwner(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BF':
    |        require(_value <= balances[msg.sender]);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        msg.sender.transfer(_value);
    |        emit Withdraw(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BF':
    |        require(_value <= balances[this]);
    |        balances[this] = balances[this].sub(_value);
  > |        msg.sender.transfer(_value);
    |        emit WithdrawOwner(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |    function betMatch(uint256 _matchNo, uint256 _teamNo) public whenNotPaused payable returns (bool) {
    |        uint256 amount = msg.value;
  > |        betMatchRecords[_matchNo][_teamNo][msg.sender] = betMatchRecords[_matchNo][_teamNo][msg.sender].add(amount);
    |        betMatchBalances[_matchNo][_teamNo] = betMatchBalances[_matchNo][_teamNo].add(amount);
    |        balances[this] = balances[this].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |        uint256 amount = msg.value;
    |        betMatchRecords[_matchNo][_teamNo][msg.sender] = betMatchRecords[_matchNo][_teamNo][msg.sender].add(amount);
  > |        betMatchBalances[_matchNo][_teamNo] = betMatchBalances[_matchNo][_teamNo].add(amount);
    |        balances[this] = balances[this].add(amount);
    |        emit BetMatch(msg.sender, _matchNo, _teamNo, amount);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |        betMatchRecords[_matchNo][_teamNo][msg.sender] = betMatchRecords[_matchNo][_teamNo][msg.sender].add(amount);
    |        betMatchBalances[_matchNo][_teamNo] = betMatchBalances[_matchNo][_teamNo].add(amount);
  > |        balances[this] = balances[this].add(amount);
    |        emit BetMatch(msg.sender, _matchNo, _teamNo, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |    function behalfBet(address _user, uint256 _matchNo, uint256 _teamNo) public whenNotPaused onlyBehalfer payable returns (bool) {
    |        uint256 amount = msg.value;
  > |        betMatchRecords[_matchNo][_teamNo][_user] = betMatchRecords[_matchNo][_teamNo][_user].add(amount);
    |        betMatchBalances[_matchNo][_teamNo] = betMatchBalances[_matchNo][_teamNo].add(amount);
    |        balances[this] = balances[this].add(amount);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |        uint256 amount = msg.value;
    |        betMatchRecords[_matchNo][_teamNo][_user] = betMatchRecords[_matchNo][_teamNo][_user].add(amount);
  > |        betMatchBalances[_matchNo][_teamNo] = betMatchBalances[_matchNo][_teamNo].add(amount);
    |        balances[this] = balances[this].add(amount);
    |        emit BehalfBet(_user, _matchNo, _teamNo, amount);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |        betMatchRecords[_matchNo][_teamNo][_user] = betMatchRecords[_matchNo][_teamNo][_user].add(amount);
    |        betMatchBalances[_matchNo][_teamNo] = betMatchBalances[_matchNo][_teamNo].add(amount);
  > |        balances[this] = balances[this].add(amount);
    |        emit BehalfBet(_user, _matchNo, _teamNo, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |        require(_addrLst.length == _amtLst.length);
    |        for (uint i=0; i<_addrLst.length; i++) {
  > |            balances[_addrLst[i]] = balances[_addrLst[i]].add(_amtLst[i]);
    |            balances[this] = balances[this].sub(_amtLst[i]);
    |            emit Issue(_addrLst[i], _amtLst[i]);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |        for (uint i=0; i<_addrLst.length; i++) {
    |            balances[_addrLst[i]] = balances[_addrLst[i]].add(_amtLst[i]);
  > |            balances[this] = balances[this].sub(_amtLst[i]);
    |            emit Issue(_addrLst[i], _amtLst[i]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |    function withdraw(uint256 _value) public whenNotPaused returns (bool) {
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        msg.sender.transfer(_value);
    |        emit Withdraw(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |    function withdrawOwner(uint256 _value) public onlyManager returns (bool) {
    |        require(_value <= balances[this]);
  > |        balances[this] = balances[this].sub(_value);
    |        msg.sender.transfer(_value);
    |        emit WithdrawOwner(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |  
    |  function setManager(address _manager)public onlyOwner returns (bool) {
  > |      manager = _manager;
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |  
    |  function setBehalfer(address _behalfer)public onlyOwner returns (bool) {
  > |      behalfer = _behalfer;
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BF':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(97)

[33mWarning[0m for LockedEther in contract 'BasicBF':
    |}
    |
  > |contract BasicBF is Pausable {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'BasicBF':
    |  }
    |  
  > |  function setManager(address _manager)public onlyOwner returns (bool) {
    |      manager = _manager;
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'BasicBF':
    |  }
    |  
  > |  function setBehalfer(address _behalfer)public onlyOwner returns (bool) {
    |      behalfer = _behalfer;
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'BasicBF':
    |    using SafeMath for uint256;
    |    
  > |    mapping (address => uint256) public balances;
    |    // match -> team -> amount
    |    mapping (uint256 => mapping (uint256 => uint256)) public betMatchBalances;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'BasicBF':
    |    mapping (address => uint256) public balances;
    |    // match -> team -> amount
  > |    mapping (uint256 => mapping (uint256 => uint256)) public betMatchBalances;
    |    // match -> team -> user -> amount
    |    mapping (uint256 => mapping (uint256 => mapping (address => uint256))) public betMatchRecords;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'BasicBF':
    |    mapping (uint256 => mapping (uint256 => uint256)) public betMatchBalances;
    |    // match -> team -> user -> amount
  > |    mapping (uint256 => mapping (uint256 => mapping (address => uint256))) public betMatchRecords;
    |
    |    event Withdraw(address indexed user, uint256 indexed amount);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'BasicBF':
    |
    |contract Ownable {
  > |  address public owner;
    |  address public manager;
    |  address public behalfer;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'BasicBF':
    |contract Ownable {
    |  address public owner;
  > |  address public manager;
    |  address public behalfer;
    |
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'BasicBF':
    |  address public owner;
    |  address public manager;
  > |  address public behalfer;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'BasicBF':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'BasicBF':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'BasicBF':
    |  }
    |
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'BasicBF':
    |  }
    |
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicBF':
    |  
    |  function setManager(address _manager)public onlyOwner returns (bool) {
  > |      manager = _manager;
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicBF':
    |  
    |  function setBehalfer(address _behalfer)public onlyOwner returns (bool) {
  > |      behalfer = _behalfer;
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicBF':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicBF':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicBF':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(97)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |  address public manager;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |  
  > |  function setManager(address _manager)public onlyOwner returns (bool) {
    |      manager = _manager;
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |  
  > |  function setBehalfer(address _behalfer)public onlyOwner returns (bool) {
    |      behalfer = _behalfer;
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  address public manager;
    |  address public behalfer;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |  address public owner;
  > |  address public manager;
    |  address public behalfer;
    |
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  address public owner;
    |  address public manager;
  > |  address public behalfer;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  
    |  function setManager(address _manager)public onlyOwner returns (bool) {
  > |      manager = _manager;
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  
    |  function setBehalfer(address _behalfer)public onlyOwner returns (bool) {
  > |      behalfer = _behalfer;
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(71)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |  
  > |  function setManager(address _manager)public onlyOwner returns (bool) {
    |      manager = _manager;
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |  
  > |  function setBehalfer(address _behalfer)public onlyOwner returns (bool) {
    |      behalfer = _behalfer;
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |  address public owner;
    |  address public manager;
    |  address public behalfer;
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |  address public owner;
  > |  address public manager;
    |  address public behalfer;
    |
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  address public owner;
    |  address public manager;
  > |  address public behalfer;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  modifier whenNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  }
    |
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  
    |  function setManager(address _manager)public onlyOwner returns (bool) {
  > |      manager = _manager;
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  
    |  function setBehalfer(address _behalfer)public onlyOwner returns (bool) {
  > |      behalfer = _behalfer;
    |      return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(97)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.23;
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x762987d09a1558700e436395612a27f0c9d30490.sol(3)


