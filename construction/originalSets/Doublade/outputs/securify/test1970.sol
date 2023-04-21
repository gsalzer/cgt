Processing contract: /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol:Kemonocoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |  }
    |
  > |  function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |    TKN memory tkn;
    |    tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    |pragma solidity ^0.4.20;
    |
  > |contract ContractReceiver {
    |  struct TKN {
    |    address sender;
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(22)

[33mWarning[0m for DAO in contract 'Kemonocoin':
    |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(168)

[33mWarning[0m for DAO in contract 'Kemonocoin':
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(232)

[33mWarning[0m for DAOConstantGas in contract 'Kemonocoin':
    |            && frozenAccount[msg.sender] == false
    |            && now > unlockUnixTime[msg.sender]);
  > |    if (msg.value > 0) owner.transfer(msg.value);
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(342)

[31mViolation[0m for MissingInputValidation in contract 'Kemonocoin':
    |  
    |  mapping (address => uint) balances;
  > |  mapping (address => bool) public frozenAccount;
    |  mapping (address => uint256) public unlockUnixTime;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'Kemonocoin':
    |  mapping (address => uint) balances;
    |  mapping (address => bool) public frozenAccount;
  > |  mapping (address => uint256) public unlockUnixTime;
    |
    |  event FrozenFunds(address indexed target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function balanceOf(address _owner) public view returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
    |    distributeAmount = _unitAmount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(333)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |
    |library SafeMath {
  > |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
    |      return 0;
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  string public symbol = "KEM";
    |  uint8 public decimals = 7;
  > |  uint256 public initialSupply = 5e10 * 1e7;
    |  uint256 public totalSupply;
    |  uint256 public distributeAmount = 0;
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  uint256 public initialSupply = 5e10 * 1e7;
    |  uint256 public totalSupply;
  > |  uint256 public distributeAmount = 0;
    |  bool public mintingFinished = false;
    |  
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  uint256 public totalSupply;
    |  uint256 public distributeAmount = 0;
  > |  bool public mintingFinished = false;
    |  
    |  mapping (address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function name() public view returns (string _name) {
    |      return name;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function symbol() public view returns (string _symbol) {
    |      return symbol;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function decimals() public view returns (uint8 _decimals) {
    |      return decimals;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function totalSupply() public view returns (uint256 _totalSupply) {
    |      return totalSupply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function isContract(address _addr) private view returns (bool is_contract) {
    |    uint length;
    |    assembly {
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function finishMinting() onlyOwner canMint public returns (bool) {
    |    mintingFinished = true;
    |    MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'Kemonocoin':
    |  }
    |
  > |  function autoDistribute() payable public {
    |    require(distributeAmount > 0
    |            && balanceOf(owner) >= distributeAmount
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(337)

[31mViolation[0m for TODReceiver in contract 'Kemonocoin':
    |            && frozenAccount[msg.sender] == false
    |            && now > unlockUnixTime[msg.sender]);
  > |    if (msg.value > 0) owner.transfer(msg.value);
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(342)

[33mWarning[0m for UnhandledException in contract 'Kemonocoin':
    |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(168)

[33mWarning[0m for UnhandledException in contract 'Kemonocoin':
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(232)

[33mWarning[0m for UnhandledException in contract 'Kemonocoin':
    |            && frozenAccount[msg.sender] == false
    |            && now > unlockUnixTime[msg.sender]);
  > |    if (msg.value > 0) owner.transfer(msg.value);
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(342)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |    if(isContract(_to)) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |        if (balanceOf(msg.sender) < _value) revert();
    |        balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |        balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |  function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |  function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
    |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = SafeMath.sub(balanceOf(msg.sender), _value);
  > |    balances[_to] = SafeMath.add(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
    |    receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(230)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |    for (uint i = 0; i < targets.length; i++) {
    |      require(targets[i] != 0x0);
  > |      frozenAccount[targets[i]] = isFrozen;
    |      FrozenFunds(targets[i], isFrozen);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(243)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |    for(uint i = 0; i < targets.length; i++){
    |      require(unlockUnixTime[targets[i]] < unixTimes[i]);
  > |      unlockUnixTime[targets[i]] = unixTimes[i];
    |      LockedFunds(targets[i], unixTimes[i]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(254)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |            && balanceOf(_from) >= _unitAmount);
    |
  > |    balances[_from] = SafeMath.sub(balances[_from], _unitAmount);
    |    totalSupply = SafeMath.sub(totalSupply, _unitAmount);
    |    Burn(_from, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |
    |    balances[_from] = SafeMath.sub(balances[_from], _unitAmount);
  > |    totalSupply = SafeMath.sub(totalSupply, _unitAmount);
    |    Burn(_from, _unitAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(264)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |    require(_unitAmount > 0);
    |
  > |    totalSupply = SafeMath.add(totalSupply, _unitAmount);
    |    balances[_to] = SafeMath.add(balances[_to], _unitAmount);
    |    Mint(_to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(276)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |
    |    totalSupply = SafeMath.add(totalSupply, _unitAmount);
  > |    balances[_to] = SafeMath.add(balances[_to], _unitAmount);
    |    Mint(_to, _unitAmount);
    |    Transfer(address(0), _to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(277)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |              && now > unlockUnixTime[addresses[i]]);
    |
  > |      balances[addresses[i]] = SafeMath.add(balances[addresses[i]], amount);
    |      Transfer(msg.sender, addresses[i], amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(304)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |      Transfer(msg.sender, addresses[i], amount);
    |    }
  > |    balances[msg.sender] = SafeMath.sub(balances[msg.sender], totalAmount);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(307)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |      amounts[i] = SafeMath.mul(amounts[i], 1e8);
    |      require(balances[addresses[i]] >= amounts[i]);
  > |      balances[addresses[i]] = SafeMath.sub(balances[addresses[i]], amounts[i]);
    |      totalAmount = SafeMath.add(totalAmount, amounts[i]);
    |      Transfer(addresses[i], msg.sender, amounts[i]);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(325)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |      Transfer(addresses[i], msg.sender, amounts[i]);
    |    }
  > |    balances[msg.sender] = SafeMath.add(balances[msg.sender], totalAmount);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |    if (msg.value > 0) owner.transfer(msg.value);
    |    
  > |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
    |    balances[msg.sender] = SafeMath.add(balances[msg.sender], distributeAmount);
    |    Transfer(owner, msg.sender, distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(344)

[31mViolation[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |    
    |    balances[owner] = SafeMath.sub(balances[owner], distributeAmount);
  > |    balances[msg.sender] = SafeMath.add(balances[msg.sender], distributeAmount);
    |    Transfer(owner, msg.sender, distributeAmount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'Kemonocoin':
    |
    |  function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
  > |    distributeAmount = _unitAmount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(334)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x7f32d1959b5361e884df8c9d017a03f4ce29c8b2.sol(61)


