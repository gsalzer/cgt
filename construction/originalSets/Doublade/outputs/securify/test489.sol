Processing contract: /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol:LongLegs
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    |pragma solidity ^0.4.20;
    |
  > |contract ContractReceiver {
    |  struct TKN {
    |    address sender;
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |  }
    |
  > |  function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |    TKN memory tkn;
    |    tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    |pragma solidity ^0.4.20;
    |
  > |contract ContractReceiver {
    |  struct TKN {
    |    address sender;
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(3)

[33mWarning[0m for DAO in contract 'LongLegs':
    |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(149)

[33mWarning[0m for DAO in contract 'LongLegs':
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(213)

[33mWarning[0m for DAOConstantGas in contract 'LongLegs':
    |            && frozenAccount[msg.sender] == false
    |            && now > unlockUnixTime[msg.sender]);
  > |    if (msg.value > 0) owner.transfer(msg.value);
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(323)

[31mViolation[0m for MissingInputValidation in contract 'LongLegs':
    |  
    |  mapping (address => uint) balances;
  > |  mapping (address => bool) public frozenAccount;
    |  mapping (address => uint256) public unlockUnixTime;
    |
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'LongLegs':
    |  mapping (address => uint) balances;
    |  mapping (address => bool) public frozenAccount;
  > |  mapping (address => uint256) public unlockUnixTime;
    |
    |  event FrozenFunds(address indexed target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function balanceOf(address _owner) public view returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
    |    distributeAmount = _unitAmount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(314)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |
    |library SafeMath {
  > |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
    |      return 0;
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  string public symbol = "XLL";
    |  uint8 public decimals = 7;
  > |  uint256 public initialSupply = 3e10 * 1e7;
    |  uint256 public totalSupply;
    |  uint256 public distributeAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  uint256 public initialSupply = 3e10 * 1e7;
    |  uint256 public totalSupply;
  > |  uint256 public distributeAmount = 0;
    |  bool public mintingFinished = false;
    |  
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  uint256 public totalSupply;
    |  uint256 public distributeAmount = 0;
  > |  bool public mintingFinished = false;
    |  
    |  mapping (address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function name() public view returns (string _name) {
    |      return name;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function symbol() public view returns (string _symbol) {
    |      return symbol;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function decimals() public view returns (uint8 _decimals) {
    |      return decimals;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function totalSupply() public view returns (uint256 _totalSupply) {
    |      return totalSupply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function isContract(address _addr) private view returns (bool is_contract) {
    |    uint length;
    |    assembly {
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function finishMinting() onlyOwner canMint public returns (bool) {
    |    mintingFinished = true;
    |    MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(264)

[33mWarning[0m for MissingInputValidation in contract 'LongLegs':
    |  }
    |
  > |  function autoDistribute() payable public {
    |    require(distributeAmount > 0
    |            && balanceOf(owner) >= distributeAmount
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(318)

[31mViolation[0m for TODReceiver in contract 'LongLegs':
    |            && frozenAccount[msg.sender] == false
    |            && now > unlockUnixTime[msg.sender]);
  > |    if (msg.value > 0) owner.transfer(msg.value);
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(323)

[33mWarning[0m for UnhandledException in contract 'LongLegs':
    |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(149)

[33mWarning[0m for UnhandledException in contract 'LongLegs':
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(213)

[33mWarning[0m for UnhandledException in contract 'LongLegs':
    |            && frozenAccount[msg.sender] == false
    |            && now > unlockUnixTime[msg.sender]);
  > |    if (msg.value > 0) owner.transfer(msg.value);
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |    if(isContract(_to)) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |        if (balanceOf(msg.sender) < _value) revert();
    |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |  function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |  function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
    |    receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |    for (uint i = 0; i < targets.length; i++) {
    |      require(targets[i] != 0x0);
  > |      frozenAccount[targets[i]] = isFrozen;
    |      FrozenFunds(targets[i], isFrozen);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |    for(uint i = 0; i < targets.length; i++){
    |      require(unlockUnixTime[targets[i]] < unixTimes[i]);
  > |      unlockUnixTime[targets[i]] = unixTimes[i];
    |      LockedFunds(targets[i], unixTimes[i]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |            && balanceOf(_from) >= _unitAmount);
    |
  > |    balances[_from] = SafeMath.sub(balances[_from], _unitAmount);
    |    totalSupply = SafeMath.sub(totalSupply, _unitAmount);
    |    Burn(_from, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(244)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |
    |    balances[_from] = SafeMath.sub(balances[_from], _unitAmount);
  > |    totalSupply = SafeMath.sub(totalSupply, _unitAmount);
    |    Burn(_from, _unitAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(245)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |    require(_unitAmount > 0);
    |
  > |    totalSupply = SafeMath.add(totalSupply, _unitAmount);
    |    balances[_to] = SafeMath.add(balances[_to], _unitAmount);
    |    Mint(_to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(257)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |
    |    totalSupply = SafeMath.add(totalSupply, _unitAmount);
  > |    balances[_to] = SafeMath.add(balances[_to], _unitAmount);
    |    Mint(_to, _unitAmount);
    |    Transfer(address(0), _to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(258)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |              && now > unlockUnixTime[addresses[i]]);
    |
  > |      balances[addresses[i]] = SafeMath.add(balances[addresses[i]], amount);
    |      Transfer(msg.sender, addresses[i], amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(285)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |      Transfer(msg.sender, addresses[i], amount);
    |    }
  > |    balances[msg.sender] = SafeMath.sub(balances[msg.sender], totalAmount);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |      amounts[i] = SafeMath.mul(amounts[i], 1e8);
    |      require(balances[addresses[i]] >= amounts[i]);
  > |      balances[addresses[i]] = SafeMath.sub(balances[addresses[i]], amounts[i]);
    |      totalAmount = SafeMath.add(totalAmount, amounts[i]);
    |      Transfer(addresses[i], msg.sender, amounts[i]);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |      Transfer(addresses[i], msg.sender, amounts[i]);
    |    }
  > |    balances[msg.sender] = SafeMath.add(balances[msg.sender], totalAmount);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(310)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |    if (msg.value > 0) owner.transfer(msg.value);
    |    
  > |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
    |    balances[msg.sender] = SafeMath.add(balances[msg.sender], distributeAmount);
    |    Transfer(owner, msg.sender, distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(325)

[31mViolation[0m for UnrestrictedWrite in contract 'LongLegs':
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  > |    balances[msg.sender] = SafeMath.add(balances[msg.sender], distributeAmount);
    |    Transfer(owner, msg.sender, distributeAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'LongLegs':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'LongLegs':
    |
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'LongLegs':
    |
    |  function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
  > |    distributeAmount = _unitAmount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(315)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(38)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x1ffd205d11b2e200fcc8908afd649cff256f16d0.sol(42)


